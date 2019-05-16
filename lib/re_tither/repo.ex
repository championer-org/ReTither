defmodule ReTither.Repo do
  use Ecto.Repo,
    otp_app: :re_tither,
    adapter: Ecto.Adapters.Postgres
end
