# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :suno,
  ecto_repos: [Suno.Repo]

# Configures the endpoint
config :suno, SunoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "+FqzYS61slb98x6qpeUbPvhEU2pEIbf9G5l61ZJw5xrWd5E5PBj/7zb4gM0IbSNz",
  render_errors: [view: SunoWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Suno.PubSub,
  live_view: [signing_salt: "RnUutZqf"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
