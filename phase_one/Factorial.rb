def factorial_iterative(num)
  i = 1
  for j in 1..num
    i *= j
  end
  i
end

def factorial_recursive(num)
  num == 0 ? 1 : factorial_recursive(num-1) * num
end

p factorial_iterative(5) == 120
p factorial_iterative(0) == 1

p factorial_recursive(5) == 120
p factorial_recursive(0) == 1