# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :grpow,
  ecto_repos: [Grpow.Repo]

# Configures the endpoint
config :grpow, GrpowWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "KjI1ELGYHSOTEuFdSTA3fcu7ikokyZWygFmZMNqCo/o6IbIek3E1LNt6dzbNNiR7",
  render_errors: [view: GrpowWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Grpow.PubSub,
  live_view: [signing_salt: "+6TwIkHx"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :grpow, :pow,
  user: Grpow.Users.User,
  repo: Grpow.Repo

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
