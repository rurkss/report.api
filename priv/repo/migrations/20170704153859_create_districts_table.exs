defmodule Report.Repo.Migrations.CreateDistrictsTable do
  use Ecto.Migration

  def change do
    create table(:districts, primary_key: false) do
      add :id, :uuid, primary_key: true
      add :region_id, :uuid, null: false
      add :name, :string, null: false
      add :koatuu, :string, size: 10
      timestamps(type: :utc_datetime)
    end
  end
end
