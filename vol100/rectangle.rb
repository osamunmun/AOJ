#!/bin/ruby 

input = gets
array = input.split().map(&:to_i)
puts "%d %d" % [array[0] * array[1], 2 * (array[0]+array[1])]
