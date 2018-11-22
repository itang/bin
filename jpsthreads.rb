#!/usr/bin/env ruby

# class doc
class JpsThreadItem
  attr_accessor :name, :pid, :thread_length

  def initialize(name, pid, thread_length)
    @name = name
    @pid = pid
    @thread_length = thread_length
  end
end

# class JspThread
class JpsThread
  attr_reader :items

  def initialize(items)
    @items = items
  end

  def self.exe_and_parse
    items = `jps`.lines.map do |line|
      pid, name = line.split(' ')
      ret = `ps -mp #{pid} -o THREAD,tid,time`

      JpsThreadItem.new(name, pid, ret.lines.length)
    end

    JpsThread.new(items)
  end

  def display
    max_name_len = items.map { |it| it.name.length }.max
    pattern = "%#{max_name_len}s - %6d: %d\n"
    items
      .sort_by { |it| it.thread_length }
      .reverse
      .each do |it|
        printf(pattern, it.name, it.pid, it.thread_length)
      end
  end
end

if $0 == __FILE__
  JpsThread.exe_and_parse.display
end