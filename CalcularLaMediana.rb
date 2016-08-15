def median(array)
  array = array.sort
  loc = array.length/2
  med = array[loc] if array.length % 2 != 0 
  med = (array[loc]+array[loc-1])/2.to_f if array.length % 2 == 0
   med
end

# Pruebas
p median([4, 5, 6]) == 5
p median([-3, 0, 3]) == 0
p median([2, 3, 4, 5]) == 3.5
p median([1, 8, 10]) == 8