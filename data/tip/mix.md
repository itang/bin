# mix

## mix new

    custom module name
    $ mix new kv --module KV
    
    $ mix new my_app --sup

## mix hex

    $ mix hex.info jason

## mix xref

    $ mix xref callers Jason.encode!
    $ mix xref callers Phoenix.Controller.render

## mix test

    Running your previous failed test only
    $ mix test --failed
    
    $ mix test --slowest

## mix phx

    $ mix phx.new my_app --umbrella

    $ mix phx.digest
    $ PORT=4000 MIX_ENV=prod mix do compile, phx.server

    $ PORT=4000 MIX_ENV=prod iex -S mix phx.server
    $ PORT=4000 MIX_ENV=prod elixir --detached -S mix do compile, phx.server

    $ mix phx.new my_app --no-assets --no-dashboard  --no-ecto --no-esbuild --no-gettext --no-html --no-live --no-mailer --no-tailwind

## mix ecto

    $ mix ecto.create
    $ mix ecto.migrate
    $ mix ecto.setup

## Mix.install

    Mix.install([:jason])
    IO.puts(Jason.encode!(%{hello: :world}))

## archive.install

```
mix archive.install hex phx_new

mix archive.install hex igniter_new

```
