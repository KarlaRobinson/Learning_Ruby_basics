def fizzbuzz(min,max)
  new_array = []
  array = Array(min..max)
  array.each do |num|
    num = "FizzBuzz" if num % 3 == 0 && num % 5 == 0 
    num = "Fizz" if num % 3 == 0
    num = "Buzz" if num % 5 == 0
    num = num
  new_array << num
  end
  new_array
end

# Pruebas
p fizzbuzz(3, 5) == ["Fizz", 4, "Buzz"]
p fizzbuzz(10, 15) == ["Buzz", 11, "Fizz", 13, 14, "FizzBuzz"]