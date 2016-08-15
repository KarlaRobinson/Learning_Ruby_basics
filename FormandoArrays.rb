def array_index(array, num)
  new_array = []
  array.each do |elem|
      i = 1
         num.times do
          new_elem = Array(elem)
          new_elem << i
          new_array << new_elem
          i += 1
        end
    end
     new_array
end

#test
 p array_index(["c", "b", "a"], 2) == [["c", 1], ["c", 2], ["b", 1], ["b", 2], ["a", 1], ["a", 2]]
 p array_index(["a"], 3) == [["a", 1], ["a", 2], ["a", 3]]



