#!/usr/bin/env ruby

require 'json'

content = ARGV.empty? ? gets : File.read(ARGV[0])
pretty_ret = JSON.pretty_generate(JSON.parse(content))
puts pretty_ret
