def fib(n)
  if n < 2
    return n
  else 
    return fib(n-1) + fib(n-2)
  end
end
puts"which fibbonacci number u want??"
num = gets.chomp.to_i
puts fib(num)
