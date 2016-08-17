def prime_factors(integer)
  num = integer
  multiples = []
  until num == smallest_prime(num)
    prime = smallest_prime(num)
    num /= prime
    multiples << prime
  end
  multiples.push(num)
end


def smallest_prime(integer)
  (2...integer).each {|i| return i if integer % i == 0 }
  integer
end


p prime_factors(17) == [17]
p prime_factors(29) == [29]
p prime_factors(99) == [3, 3, 11]
p prime_factors(49) == [7, 7]
p prime_factors(4) == [2, 2]
p prime_factors(13) == [13]
p prime_factors(12) == [2, 2, 3]
p prime_factors(34) == [2, 17]


#DEFINE prime_factor wich recieves an integer
#SET num to integer
#SET multiples to empty array
  #UNTIL num EQUALS it´s smallest prime number
   #DO EACH over (2...integer)
   #RETURN  next smallest prime number or integer if prime
   #DIVIDE by next smallest prime number
   #PUSH next smallest prime to array
  #END UNTIL
#PUSH num to array
#END DEFINE

require 'benchmark'
puts "17:"
p Benchmark.realtime { prime_factors(17)} * 1000
puts "99:"
p Benchmark.realtime { prime_factors(99)} * 1000





