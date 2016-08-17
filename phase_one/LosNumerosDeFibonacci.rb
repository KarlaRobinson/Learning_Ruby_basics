def fibonacci_iterative(num)
  anterior = 0
  actual = 1
  (1..num).each do
    fib = actual + anterior
    anterior = actual
    actual  = fib
  end
  anterior
end

def fibonacci_recursive(num)
  return num if num < 2
  fibonacci_recursive(num -1) + fibonacci_recursive(num - 2)
end


# Driver Code

 p fibonacci_iterative(0) == 0
 p fibonacci_iterative(1) == 1
 p fibonacci_iterative(2) == 1
 p fibonacci_iterative(3) == 2
 p fibonacci_iterative(4) == 3
 p fibonacci_iterative(5) == 5

p fibonacci_recursive(0) == 0
p fibonacci_recursive(1) == 1
p fibonacci_recursive(2) == 1
p fibonacci_recursive(3) == 2
p fibonacci_recursive(4) == 3
 p fibonacci_recursive(5) == 5


require 'benchmark'

puts "iterative:"
p Benchmark.realtime { fibonacci_iterative(10) } * 1000000


puts "recursive:"
p Benchmark.realtime { fibonacci_recursive(10) } * 1000000