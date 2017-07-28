defmodule Report.Billings do
  @moduledoc false
  require Logger
  import Ecto.Query
  import Ecto.Changeset
  alias Report.Billing
  alias Report.Repo
  alias Report.Replica.Replicas
  alias Report.Replica.Declaration
  alias Report.Replica.LegalEntity
  alias Report.GandalfCaller

  def get_last_billing_date do
    Billing
    |> select([:billing_date])
    |> order_by([desc: :billing_date])
    |> first
    |> Repo.one
    |> get_billing_date
  end
  defp get_billing_date(nil), do: Replicas.get_oldest_declaration_date()
  defp get_billing_date(billing) when is_map(billing), do: Map.get(billing, :billing_date)

  def create_billing(%Declaration{person: person, division: division} = declaration) do
    with billing_chset <- billing_changeset(%Billing{}, declaration, person, division),
         {:ok, billing} <- Repo.insert(billing_chset)
    do
      Logger.info fn -> "Billing was created for #{billing.declaration.id}" end
      billing
    else
      {:error, error_chset} ->
        Logger.error fn -> """
          #{error_chset.errors} for
          declaration_id=#error_chsetchanges.declaration.data.id}
          legal_entity_id=#error_chsetchanges.legal_entity.data.id}
          """
        end
    end
  end

  def billing_changeset(billing, declaration, person, division) do
    billing
    |> cast(%{}, [])
    |> put_assoc(:legal_entity, declaration.legal_entity)
    |> put_assoc(:declaration, declaration)
    |> put_assoc(:division, division)
    |> put_change(:billing_date, Timex.today)
    |> put_mountain_group(division)
    |> put_person_age(person)
    |> put_decision()
  end

  defp put_mountain_group(billing_chset, division) do
    put_change(billing_chset, :mountain_group, division.mountain_group)
  end

  defp put_decision(billing_chset) do
    make_decision(billing_chset)
  end

  defp make_decision(billing_chset) do
    person_age = billing_chset.changes.person_age
    mountain_group = billing_chset.changes.mountain_group
    decision_params = GandalfCaller.make_decision(%{"mountain_group": mountain_group, "age": person_age})
    billing_chset
    |> put_change(:decision_id, decision_params.id)
    |> put_change(:compensation_group, decision_params.decision)
  end

  defp put_person_age(billing_chset, person) do
    person_age = Timex.diff(Timex.today, person.birth_date, :years)
    put_change(billing_chset, :person_age, person_age)
  end

  def list_billing(query \\ Billing) do
    Repo.all(query)
  end

  def todays_billing(query) do
    where(query, [q], q.billing_date == ^Timex.today)
  end

  def get_billing_for_capitation(date \\ Timex.today) do
    date
    |> get_legal_entities_for_csv()
    |> Repo.stream(timeout: :infinity)
  end

  def get_legal_entities_for_csv(billing_date) do
    from le in LegalEntity,
    full_join: b in Billing, on: le.id == b.legal_entity_id,
    where: b.billing_date == ^billing_date,
    or_where: is_nil(b.billing_date),
    group_by: [le.edrpou, b.mountain_group, le.name],
    order_by: le.edrpou,
    select: [
      le.edrpou,
      le.name,
      b.mountain_group,
      fragment(~s(sum\(case when person_age<5 then 1 else 0 end\) as "0-5")),
      fragment(~s(sum\(case when person_age>=5 and person_age<18 then 1 else 0 end\) as "6-17")),
      fragment(~s(sum\(case when person_age>17 and person_age<40 then 1 else 0 end\) as "18-39")),
      fragment(~s(sum\(case when person_age>39 and person_age<65 then 1 else 0 end\) as "40-64")),
      fragment(~s(sum\(case when person_age>64 then 1 else 0 end\) as ">65"))
    ]
  end
end
