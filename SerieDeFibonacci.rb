def fibonacci(num)
  serie = [1, 1]
  for i in 3..num
    serie << serie[i - 3] + serie[i - 2]
  end
  serie.last
end


# Pruebas

p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(10) == 55