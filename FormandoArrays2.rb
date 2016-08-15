def array_index(array, num)
  new_array = []
  array.map do |elem|
    elem = Array(elem)
    indice = []
    i = 1
    num.times do
     indice << i
     i += 1
    end
    elem << indice
    new_array << elem
  end
  new_array
end

p array_index(["c", "b", "a"], 2) == [["c", [1, 2]], ["b", [1, 2]], ["a", [1, 2]]]
p array_index(["a"], 3) == [["a", [1, 2, 3]]]

# def array_index(array, num)
#   new_array = []
#   array.each do |elem|
#     elem = Array(elem)
#     elem << Array(1..num)
#     new_array << elem
#   end
#   new_array
# end

# p array_index(["c", "b", "a"], 2) == [["c", [1, 2]], ["b", [1, 2]], ["a", [1, 2]]]
# p array_index(["a"], 3) == [["a", [1, 2, 3]]]

