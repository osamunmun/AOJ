#!/bin/ruby 

num = 1
while s = gets
  s = s[0..-2].to_i
  break if s == 0
  puts "Case #{num}: #{s}"
  num = num + 1
end
