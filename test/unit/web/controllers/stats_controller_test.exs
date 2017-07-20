defmodule Report.Web.StatsControllerTest do
  @moduledoc false
  use Report.Web.ConnCase
  import Report.Web.Router.Helpers

  test "get main stats", %{conn: conn} do
    conn = get conn, stats_path(conn, :index)
    assert response(conn, 422)

    conn = get conn, stats_path(conn, :index, from_date: "2017-01-01")
    assert response(conn, 422)

    conn = get conn, stats_path(conn, :index, to_date: "2017-01-01")
    assert response(conn, 422)

    conn = get conn, stats_path(conn, :index, from_date: "2017-01", to_date: "2017-02")
    assert response(conn, 422)

    conn = get conn, stats_path(conn, :index, from_date: "2017-07-01", to_date: "2017-01-01")
    assert response(conn, 422)

    conn = get conn, stats_path(conn, :index, from_date: "2017-01-01", to_date: "2017-07-01")
    assert response(conn, 200)

    now = Date.utc_today()
    conn = get conn, stats_path(conn, :index, from_date: "2017-01-01", to_date: to_string(now))
    schema =
      "test/data/stats/main_stats_response.json"
      |> File.read!()
      |> Poison.decode!()
    :ok = NExJsonSchema.Validator.validate(schema, json_response(conn, 200))
  end

  test "get division stats", %{conn: conn} do
    schema =
      "test/data/stats/division_stats_response.json"
      |> File.read!()
      |> Poison.decode!()

    conn = get conn, stats_path(conn, :divisions, Ecto.UUID.generate())
    :ok = NExJsonSchema.Validator.validate(schema, json_response(conn, 200))
  end
end