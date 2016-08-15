# def numbers(list)
#   list.collect do |num|
#     num * 2
#   end
#   list
# end

# #test
# list = [35, 44, 78, 34, 56]
# p numbers(list) == [35, 44, 78, 34, 56]

# require 'prime'

# def prime
#   yield
# end

# #test
# p prime{Prime.first 10} == [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
########################################################

# require'benchmark'

# def average_grade
# puts "------------Benchmak started----------"
# print "Start time: "
# puts startTime = Time.now
# puts "\n"
# puts "\"Average is: #{yield}\"" 
# puts "\n"
# print "End time: "
# puts endTime = Time.now
# puts "-------------Benchmak finished--------"
# print "Result: " 
# print endTime - startTime
# puts " seconds"
# end
 
# grades = [10, 4, 6, 8, 10]
# average_grade{grades.inject {|sum, n| sum + n} / grades.length.to_f}
########################################################
# numbers = [2, 4, 7, 10, 23, 34, 45, 42]
# pair = Proc.new{|num| num % 2 == 0 ? "Pair" : num}


# #test
# p numbers.map(&pair) == ["Pair", "Pair", 7, "Pair", 23, "Pair", 45, "Pair"]

########################################################
strings = ["ruby", "java", "c++", "javascript"]
char_length = lambda{|char| char if char.length > 4}

p strings.select(&char_length).join(", ") == "javascript"









