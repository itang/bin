# mix

## mix phx

    PORT=4000 MIX_ENV=prod mix do compile, phx.server

    PORT=4000 MIX_ENV=prod iex -S mix phx.server
    PORT=4000 MIX_ENV=prod elixir --detached -S mix do compile, phx.server