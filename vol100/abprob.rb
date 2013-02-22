#!/bin/ruby 

input = gets
input = input.split.map(&:to_i)
puts "%d %d %5f" % [input[0]/input[1], input[0]%input[1], input[0].to_f/input[1].to_f]
