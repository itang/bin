#!/usr/bin/env elixir

#defmodule Jiayou do

#  @spec browser(String.t) :: any
#  def browser(url) do
#    System.cmd "xdg-open", [url], parallelism: true
#  end
#end

urls = ~w(
      https://twitter.com
     #https://mobile.twitter.com
     #https://github.com/manastech/crystal
     #http://www.reddit.com/r/crystal_programming
     #https://groups.google.com/forum/?fromgroups#!forum/crystal-lang
     https://github.com/stars?direction=desc&sort=updated
     #https://github.com/notifications
     http://www.douban.com
     http://www.weibo.com
     http://www.deftype.com
     #http://www.haoshuju.net:8000
     #http://www.adexchanger.cn
     #http://www.rtbchina.com
     http://www.infoq.com/
     http://36kr.com/
     #https://github.com/oden-lang/oden
     #http://www.arewewebyet.org/
     #https://github.com/rust-lang/rfcs/issues/323
     #https://www.reddit.com/r/rust
     #https://doc.rust-lang.org/stable/book/
     #http://rustbyexample.com/
     https://github.com/trending/rust
     https://www.reddit.com/r/rust/
     #http://www.phoenixframework.org/docs/overview
     #http://elixir-lang.org/getting-started/introduction.html
     #http://elixir-lang.org/docs/stable/elixir/Kernel.html
     https://elixirforum.com/
     http://bbs.szhome.com/30017.html)



# urls
# |> Enum.filter(fn url -> !String.starts_with?(url, "#") end)
# |> Enum.each(fn url -> System.cmd("xdg-open", [url], parallelism: true) end)

#for url <- urls, !String.starts_with?(url, "#") do
#  System.cmd("xdg-open", [url], parallelism: false)
#end

urls
|> Stream.filter(fn url -> !String.starts_with?(url, "#") end)
|> Task.async_stream(fn url -> System.cmd("xdg-open", [url], parallelism: true) end, max_concurrency: System.schedulers_online * 2)
|> Stream.run
