def add(*arg)
  sum = 0
  arg.each{|elem| sum += elem}
  sum
end

def subtract(num1,num2)
  num1 - num2
end

def multiply(*arg)
  multiplication = 1
  arg.each{|elem| multiplication *= elem}
  multiplication
end

def divide(num1, num2)
  num1.to_f / num2.to_f
end

# Pruebas
p add(10, 2) == 12
p subtract(10, 2) == 8
p multiply(10, 2) == 20
p divide(10, 4) == 2.5

