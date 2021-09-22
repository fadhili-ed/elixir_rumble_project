# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config
config :phoenix, :json_library, Jason

# General application configuration
config :rumbl,
  ecto_repos: [Rumbl.Repo]

# Configures the endpoint
config :rumbl, RumblWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "EjPP6zAobH43Dph2TlKHgVpfDTy6MkurNEjYUM3frdYZ+D+ihuzpWEQ2C4TcSqey",
  render_errors: [view: RumblWeb.ErrorView, accepts: ~w(html json)],
  pubsub_server: Rumbl.PubSub

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
