# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :exfile_sample,
  ecto_repos: [ExfileSample.Repo]

# Configures the endpoint
config :exfile_sample, ExfileSampleWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "AIG4je6sGhgBvj9o5xzvLCh6ueXOF0yuxXnPNv1sWLiM6iFiGHzoTPmTUEc9+ejX",
  render_errors: [view: ExfileSampleWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ExfileSample.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :exfile, Exfile,
secret: "secret string to generate the token used to authenticate requests",
backends: %{
  "store" => {Exfile.Backend.FileSystem,
    directory: Path.expand("priv/static/images/store")
  },
  "cache" => {Exfile.Backend.FileSystem,
    directory: Path.expand("priv/static/images/cache")
  }
}

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
