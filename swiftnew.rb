#!/usr/bin/env ruby

name = ARGV[0] || 'test-swift'
puts "xxx: #{name}"

def sh(cmd)
  puts cmd
  ret = system cmd
  raise "Error" if !ret
end

sh "mkdir -p #{name}"
sh "mkdir -p #{name}/Sources"
sh "touch #{name}/Package.swift"

main_content = <<-eos
print("Hello, world!")
eos

File.write "#{name}/Sources/main.swift", main_content
