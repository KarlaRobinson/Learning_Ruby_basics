def linear_search(num, arr)
  i = 0
  until arr[i] == num
    i += 1
    return nil if i > arr.length
  end
  i
end

random_numbers = [ 4, 3, 2, 20, 5, 64, 78, 11, 43 ]
p linear_search(20, random_numbers) == 3

p linear_search(29, random_numbers) == nil



def global_linear_search(object, arr)
  i = 0
  index_arr = []
  until i > arr.length
    index_arr.push(i) if arr[i] == object
    i += 1
  end
 index_arr
end

arr = "entretenerse".split('')

p global_linear_search("e", arr) == [0, 4, 6, 8, 11]
