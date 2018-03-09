#!/usr/bin/env ruby

n = 40
1.upto(n) do |i|
  stat = File.read("/proc/self/stat").sub(/\A.+\) /, "").split
  process_group_id = stat[2]
  terminal_process_group_id = stat[5]
  if process_group_id == terminal_process_group_id
    print("\r|%-*s|" % [n, "*" * i])
  end
  sleep 0.1
end
puts
puts("Done")
