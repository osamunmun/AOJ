#!/bin/ruby 

while s = gets
  input = s.split.map(&:to_i)
  break if input == [0,0]
  puts input.sort!.join(" ")
end
