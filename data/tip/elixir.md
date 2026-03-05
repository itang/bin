# elixir

## Usage

### run system

Starts the system without the iex shell
```
mix run --no-halt
```

run the system in the background
```
elixir -S mix run --no-halt
```

start the system in detached mode

```elixir --erl "-detached" --sname todo_system@localhost \
-S mix run --no-halt
```


start the debugger node, but the shell is running in the context of todo_system
```
iex --sname debugger@localhost --remsh todo_system@localhost --hidden
```

Running a script starts a separate BEAM instance and interprets the code in that instance

```
elixir --sname terminator@localhost stop_node.exs
```

### Run Scripts

elixir my_script.exs

my_script.exs
```
Mix.install([{:jason, "~> 1.4"}])

input = hd(System.argv())
decoded = Jason.decode!(input)
IO.inspect(decoded)
```

This starts the OTP application, invokes the MyTool.Runner.run/0 function, and terminates as soon as the function is finished
```
ix run -e MyTool.Runner.run
```

### mix archive


mix archive.build


mix archive.install


### run release

Here, the RELEASE_NODE OS environment variable is set to the desired node name. Without it, Elixir would choose a default value based on the host name

```
RELEASE_NODE="todo@localhost" RELEASE_COOKIE="todo" _build/prod/rel/todo/bin/todo start_iex
```

To start the system as a background process, you can use the daemon command
```
RELEASE_NODE="todo@localhost" _build/prod/rel/todo/bin/todo daemon
```

Once the system is running in the background, you can start a remote shell to the node
```
RELEASE_NODE="todo@localhost" _build/prod/rel/todo/bin/todo remote
```

If the system is running as a background process, and you want to stop it, you can use the stop command
```
RELEASE_NODE="todo@localhost" _build/prod/rel/todo/bin/todo stop
```

Start the release in background with iex running, attach to the shell with the to_erl tool
```
RELEASE_NODE="todo@localhost" _build/prod/rel/todo/bin/todo daemon_iex
_build/prod/rel/todo/erts-13.0/bin/to_erl _build/prod/rel/todo/tmp/pipe/
```

### epmd

epmd -names

