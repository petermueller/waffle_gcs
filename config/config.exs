use Mix.Config

config :waffle,
  bucket: {:system, "WAFFLE_BUCKET"},
  storage: Waffle.Storage.Google.CloudStorage,
  token_fetcher: Waffle.GothTokenFetcher

config :goth, json: {:system, "GCP_CREDENTIALS"}
