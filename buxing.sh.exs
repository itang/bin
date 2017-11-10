#! /usr/bin/env elixir 

defmodule A do
  def m(d), do: 60.0 / 5000.0 * d
end

# IO.inspect(System.argv())
d = (List.first(System.argv()) || "1000") |> String.to_integer()

mf = A.m(d)
mi = mf |> :math.floor() |> round
md = mf - mi

IO.puts("")

if md == 0.0 do
  IO.puts("步行 #{d} 米, 需花 #{mi} 分钟\n\n")
else
  sec = :io_lib.format("~4.1f", [md * 60]) |> List.to_string()
  IO.puts("步行 #{d} 米, 需花 #{mi} 分 #{sec} 秒\n\n")
end