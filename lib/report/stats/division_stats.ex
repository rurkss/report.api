defmodule Report.Stats.DivisionStats do
  @moduledoc false

  import Ecto.Query
  import Ecto.Changeset
  import Report.Replica.Replicas
  import Report.Stats.DivisionStatsValidator

  alias Report.Repo
  alias Report.Replica.Division
  alias Report.Stats.DivisionsMapRequest

  @type_residence "RESIDENCE"
  @fields_address ~w(
    area
    region
    settlement
  )a

  def get_map_stats(params) do
    with %Ecto.Changeset{valid?: true} = changeset <- divisions_map_changeset(%DivisionsMapRequest{}, params),
         divisions <- divisions_by_changeset(changeset, params)
      do
      {:ok, divisions}
    end
  end

  def divisions_by_changeset(changeset, params) do
    Division
    |> select([d], d)
    |> params_query(%{"type" => get_change(changeset, :type), "status" => "ACTIVE", "is_active" => true})
    |> query_legal_entity_id(get_change(changeset, :legal_entity_id))
    |> query_name(get_change(changeset, :name))
    |> query_locations(changeset.changes)
    |> query_addresses(changeset.changes)
    |> query_legal_entities(changeset.changes)
    |> Repo.paginate(params)
  end

  defp query_name(query, nil), do: query
  defp query_name(query, name), do: ilike_query(query, :name, name)

  defp query_legal_entity_id(query, nil), do: query
  defp query_legal_entity_id(query, id), do: where(query, [d], d.legal_entity_id == ^id)

  defp query_locations(
         query,
         %{
           lefttop_latitude: tlat,
           lefttop_longitude: tlong,
           rightbottom_latitude: blat,
           rightbottom_longitude: blong
         }
       ) do
    where(query, fragment("location && ST_MakeEnvelope(?, ?, ?, ?, 4326)", ^tlong, ^tlat, ^blong, ^blat))
  end
  defp query_locations(query, _), do: query

  defp query_addresses(query, changes) do
    params = prepare_address_params(changes)
    if map_size(params) > 1 do
      where(query, [d], fragment("? @> ?", d.addresses, ^[params]))
    else
      query
    end
  end

  defp prepare_address_params(changes) do
    Enum.reduce(changes, %{"type" => @type_residence}, fn({key, val}, acc) ->
      case key in @fields_address do
        true -> Map.put(acc, Atom.to_string(key), val)
        _ -> acc
      end
    end)
  end

  defp query_legal_entities(query, changes) do
    if Enum.any?(changes, fn({key, _}) -> key in [:legal_entity_name, :legal_entity_edrpou] end) do
      query
      |> join(:inner, [d], l in assoc(d, :legal_entity))
      |> query_legal_entity_name(changes.legal_entity_name)
      |> query_legal_entity_edrpou(changes.legal_entity_edrpou)
    else
      query
    end
  end

  defp query_legal_entity_name(query, nil), do: query
  defp query_legal_entity_name(query, name) do
    where(query, [..., l], ilike(l.name, ^("%" <> name <> "%")))
  end

  defp query_legal_entity_edrpou(query, nil), do: query
  defp query_legal_entity_edrpou(query, edrpou) do
    where(query, [..., l], l.edrpou == ^edrpou)
  end
end
