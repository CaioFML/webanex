# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :webanex,
  ecto_repos: [Webanex.Repo]

config :webanex, Webanex.Repo,
  migration_primary_key: [type: :binary_id],
  migration_foreign_key: [type: :binary_id]

# Configures the endpoint
config :webanex, WebanexWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "P31IWHpCf0AgNMlsINiu3oBclLFbedQb3oz4vRKCQ3qN7UVfYAV54ZnKVHJFc8ni",
  render_errors: [view: WebanexWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Webanex.PubSub,
  live_view: [signing_salt: "+hGR2/QJ"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
