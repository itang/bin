#!/usr/bin/env ruby

site = ARGV[0]
dir = site.sub('http://', '').gsub(/[\/\.]/, '_')

cmd = "wget --mirror --limit-rate=100k --wait=1 -erobots=off --no-parent --page-requisites --convert-links --no-host-directories --cut-dirs=2 --directory-prefix=#{dir} #{site}"

puts cmd
system cmd
