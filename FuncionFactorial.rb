def factorial(num)
  factorial = 1
  for i in 1..num
    factorial *= i
  end
  factorial
end

# Pruebas

p factorial(5) == 120
p factorial(4) == 24
p factorial(0) == 1
p factorial(1) == 1
p factorial(6) == 720