#! /usr/bin/env elixir 

defmodule A do
  def m(d) do
    r = 60.0 / 5000.0
    r * d
  end
end

# IO.inspect(System.argv())

d = (List.first(System.argv()) || "1000") |> String.to_integer()

mf = A.m(d)
mi = round(mf)
md = mf - mi

IO.puts("")

# TODO: :io.format
if md == 0.0 do
  IO.puts("步行 #{d} 米, 需花 #{mi} 分钟\n\n")
else
  IO.puts("步行 #{d} 米, 需花 #{mi} 分 #{md * 60} 秒\n\n")
end