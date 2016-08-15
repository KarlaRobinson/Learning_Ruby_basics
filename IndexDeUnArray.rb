def get_index(array)
  i= -1
  return array.map do |elem|
    i += 1
    elem = Array(elem)
    elem << i
  end 
end

p get_index([2, 10, 6, 34, 0, 3]) == [[2, 0], [10, 1], [6, 2], [34, 3], [0, 4], [3, 5]]