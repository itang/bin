# mix

## mix new

    custom module name
    $ mix new kv --module KV

## mix phx

    $ mix phx.new my_app --umbrella

    $ mix phx.digest
    $ PORT=4000 MIX_ENV=prod mix do compile, phx.server

    $ PORT=4000 MIX_ENV=prod iex -S mix phx.server
    $ PORT=4000 MIX_ENV=prod elixir --detached -S mix do compile, phx.server

## mix ecto

    $ mix ecto.create
    $ mix ecto.migrate
    $ mix ecto.setup
