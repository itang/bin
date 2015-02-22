#!/usr/bin/env ruby

site = ARGV[0]
if site.nil? || site.empty?
  puts "download-web.rb http://xxxx.com/xxxx"
else
  dir = site.sub('http://', '').gsub(/[\/\.]/, '_')
  cmd = "wget --mirror --limit-rate=100k --wait=1 -erobots=off --no-parent --page-requisites --convert-links --no-host-directories --cut-dirs=2 --no-check-certificate --directory-prefix=#{dir} #{site}".tap &method(:puts)
  system cmd
end
