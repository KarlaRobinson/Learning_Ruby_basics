def join_arrays(array,array2)
  new_array = []
  array.each { |elem| new_array << elem}
  array2.each { |elem| new_array << elem}
  new_array
end

# Pruebas
p join_arrays([1, 2, 3], [4, 5, 6]) == [1, 2, 3, 4, 5, 6]
p join_arrays(['a', 'b', 'c'], ['d', 'e', 'f']) == ['a', 'b', 'c', 'd', 'e', 'f']