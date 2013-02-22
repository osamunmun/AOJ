#!/bin/ruby 

array = gets
input = array.split().map(&:to_i)
case input[0]
when (-999999..input[1]-1) # Should be replaced by Float::INFINITY
  puts "a < b"
when (input[1]+1..100000)
  puts "a > b"
when input[1]
  puts "a == b"
end
