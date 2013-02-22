#!/bin/ruby 

def pop_args(stack)
  [stack.pop(), stack.pop()]
end

def calc(stack, args, operation)
  case operation
  when "+"
    stack.push(args[1] + args[0])
  when "-"
    stack.push(args[1] - args[0])
  when "*"
    stack.push(args[1] * args[0])
  when "/"
    stack.push(args[1] / args[0])
  end
end

stack = Array.new()
while arg_array = gets
  arg_array = arg_array[0..-2].split()
  arg_array.length.times{|i|
    arg = arg_array[i]
    if arg =~ /^\d+/ # check arg is num or not
      stack.push(arg.to_f)
    else
      calc(stack, pop_args(stack), arg)
    end
  }
puts "%6f" % stack.pop()
end

