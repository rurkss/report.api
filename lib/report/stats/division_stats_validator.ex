defmodule Report.Stats.DivisionStatsValidator do
  @moduledoc false

  import Ecto.Changeset

  alias Report.Stats.DivisionsMapRequest

  @fields_location ~w(
    lefttop_latitude
    lefttop_longitude
    rightbottom_latitude
    rightbottom_longitude
  )a

  def divisions_map_changeset(%DivisionsMapRequest{} = divisions_map_request, params) do
    divisions_map_request
    |> cast(params, DivisionsMapRequest.__schema__(:fields))
    |> validate_inclusion(:type, DivisionsMapRequest.types())
    |> validate_location_fields()
  end

  defp validate_location_fields(changeset) do
    case locations_field_passed?(changeset.changes) do
      true ->
        geo_format = [less_than_or_equal_to: 90, greater_than_or_equal_to: -90]
        changeset
        |> validate_required(@fields_location)
        |> validate_number(:lefttop_latitude, geo_format)
        |> validate_number(:lefttop_longitude, geo_format)
        |> validate_number(:rightbottom_latitude, geo_format)
        |> validate_number(:rightbottom_longitude, geo_format)

      false ->
        changeset
    end
  end

  defp locations_field_passed?(changes) do
    Enum.reduce_while(changes, false, fn {k, _}, _acc ->
      if k in @fields_location, do: {:halt, true}, else: {:cont, false}
    end)
  end
end
