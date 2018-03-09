#!/usr/bin/env ruby

require "io/console/size"

n = 40
1.upto(n) do |i|
  height, width = IO.console_size
  progress_width = width - "||".size
  if progress_width > 0
    ratio = (progress_width * (i / n.to_f)).ceil
    print("\r|%-*s|" % [progress_width, "*" * ratio])
  end
  sleep 0.1
end
puts
