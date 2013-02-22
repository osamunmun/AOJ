#!/bin/ruby 

arr = gets
puts arr.split.map(&:to_i).sort.join(" ")
