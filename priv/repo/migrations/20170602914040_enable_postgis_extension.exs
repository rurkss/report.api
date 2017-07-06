defmodule Report.Repo.Migrations.EnablePostgisExtension do
  use Ecto.Migration
  def up do
    execute "CREATE EXTENSION IF NOT EXISTS postgis"
  end

  def down do
    execute "DROP EXTENSION IF EXISTS postgis"
  end
end
