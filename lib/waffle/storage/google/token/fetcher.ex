defmodule Waffle.Storage.Google.Token.Fetcher do
  @callback get_token(binary(), Waffle.Types.meta() | nil) :: binary()
end
