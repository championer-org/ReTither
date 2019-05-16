use Mix.Config

# Configure your database
config :re_tither, ReTither.Repo,
  username: "postgres",
  password: "postgres",
  database: "re_tither_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :re_tither, ReTitherWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
