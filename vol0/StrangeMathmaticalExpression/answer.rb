def plus(stack)
  a = stack.pop
  b = stack.pop
  stack.push(b+a)
end

def minus(stack)
  a = stack.pop
  b = stack.pop
  stack.push(b-a)
end

def times(stack)
  a = stack.pop
  b = stack.pop
  stack.push(b*a)
end

def divide(stack)
  a = stack.pop
  b = stack.pop
  stack.push(b/a)
end

while s = gets
  things = s[0..-2].split(" ")
  stack = Array.new()
  things.each{|thing|
    if thing == "+" then
      plus(stack)
    elsif thing == "-" then
      minus(stack)
    elsif thing == "*" then
      times(stack)
    elsif thing == "/" then
      divide(stack)
    else#数字
      stack.push(thing.to_f)
    end
  }
  puts "%6f" % stack.pop
end
