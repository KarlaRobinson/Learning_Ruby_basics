def max(array)
  mayor = array[0]
  array.each do |num|
    mayor = num if num > mayor 
  end
  mayor
end

# Pruebas
p max([-20, -10, 0, 10, 20]) == 20
p max([1, 2, 3, 4, 5]) == 5
p max([5, 4, 3, 2, 1]) == 5