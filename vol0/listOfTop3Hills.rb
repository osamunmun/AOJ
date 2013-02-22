#!/bin/ruby 

array = Array.new
while s = gets
  array.push(s[0..-2].to_i)
end

array.sort!
3.times {
  puts array.pop
}
