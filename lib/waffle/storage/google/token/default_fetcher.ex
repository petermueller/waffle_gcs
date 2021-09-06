defmodule Waffle.Storage.Google.Token.DefaultFetcher do
  @behaviour Waffle.Storage.Google.Token.Fetcher

  @impl Waffle.Storage.Google.Token.Fetcher
  def get_token(scope, _meta) do
    {:ok, token} = Goth.Token.for_scope(scope)
    token.token
  end
end
