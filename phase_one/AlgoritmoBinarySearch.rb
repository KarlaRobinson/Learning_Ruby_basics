#Compara cuantas operaciones realizas si buscas secuencialmente o con el binary search
require 'benchmark'

def guess(num, array)
  middle = array.length / 2
  return middle if array[middle] == num
  if array[middle] > num
    guess(num, array[0...middle])
  else 
   middle += guess(num, array[middle...array.length])
  end
end

puts "guesstime: "
p Benchmark.realtime { guess(3,[1,2,3,5,8,9,10,12,15,20,45,67,84,99])} * 1000

puts "guesstime 1000, Array(1..100000): "
p Benchmark.realtime { guess(1000, Array(1..100000))} * 1000

puts "guesstime 8, Array(1..100000): "
p Benchmark.realtime { guess(8, Array(1..100000))} * 1000


#Driver Code
p guess(3, [1,2,3,5,8,9,10,12,15,20,45,67,84,99]) == 2
p guess(84, [1,2,3,5,8,9,10,12,15,20,45,67,84,99]) == 12
p guess(19, [1,3,14,15,16,19,21,33,44,50]) == 5
p guess(100, Array(1..500)) == 99
p guess(1000, Array(1..100000)) == 999
p guess(8, Array(1..100000)) == 7