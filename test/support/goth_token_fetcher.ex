defmodule Waffle.GothTokenFetcher do
  @moduledoc """
  An example of fetching token for Goth >= 1.3.0
  """
  @behaviour Waffle.Storage.Google.Token.Fetcher

  @impl true
  def get_token(_scope) do
    Goth.fetch!(Waffle.Goth).token
  end
end
