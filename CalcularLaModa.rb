def mode(array)
  repeat = []
  highest = []
  array.each {|num| repeat << array.count(num)}
  array.each do |elem|
    highest << elem if array.count(elem) == repeat.max
  end
  highest.uniq
end

# Pruebas
p mode([1, 2, 2, 3]) == [2]
p mode([1, 2, 2, 3, 3, 4]) == [2, 3]
p mode([1, 2, 3]) == [1, 2, 3]
p mode([0, 1, 2, 3, 4, 0]) == [0]