defmodule AppiPlanElixir.Repo do
  use Ecto.Repo,
    otp_app: :appi_plan_elixir,
    adapter: Ecto.Adapters.Postgres
end
