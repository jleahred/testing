import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :mini_liveview, MiniLiveviewWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "KTlz88HLMfia5wg3KfSTP01J/i298B0hCiZ2JRKn8CqqTFcLvpyDyBC5KyeE1Sgd",
  server: false

# In test we don't send emails.
config :mini_liveview, MiniLiveview.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
