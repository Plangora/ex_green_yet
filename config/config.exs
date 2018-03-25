# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :ex_green_yet, ExGreenYetWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "jmD9VIRkkLAKuxllwdd1oE8+e0sC/StggeCoFr7z5kjHBRVJumauQdkA/yVxQY19",
  render_errors: [view: ExGreenYetWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ExGreenYet.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
