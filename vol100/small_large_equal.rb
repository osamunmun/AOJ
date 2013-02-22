#!/bin/ruby 

require '../helper/input.rb'
include Input

input = input2intarr
case input[0]
when (-(Float::INFINITY)..input[1]-1)
  puts "a < b"
when (input[1]+1..(Float::INFINITY))
  puts "a > b"
when input[1]
  puts "a == b"
end
