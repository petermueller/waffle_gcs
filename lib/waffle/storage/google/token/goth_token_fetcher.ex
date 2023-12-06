defmodule Waffle.Storage.Google.Token.GothTokenFetcher do
  @moduledoc """
  A token fetcher that uses Goth 1.1 to fetch a token for a given scope.
  This module would raise an runtime exception if Goth 1.3 or newer is available.
  """
  @behaviour Waffle.Storage.Google.Token.Fetcher

  @version_compare Version.compare(to_string(Application.spec(:goth, :vsn)), "1.3.0")

  @impl true
  case @version_compare do
    :lt ->
      def get_token(scope) when is_binary(scope) do
        {:ok, token} = Goth.Token.for_scope(scope)
        token.token
      end

    _otherwise ->
      def get_token(_scope) do
        raise "This module is not compatible with Goth 1.3 or newer"
      end
  end
end
