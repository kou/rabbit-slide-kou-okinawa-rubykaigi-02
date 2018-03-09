#!/usr/bin/env ruby

n = 40
1.upto(n) do |i|
  print("\r|%-*s|" % [n, "*" * i])
  sleep 0.05
end
puts
