# def age(num)
#   "Woow... You are #{num} years old" if num > 10
# end

# #test
# p age(19) == "Woow... You are 19 years old"
# p age(24) == "Woow... You are 24 years old"
# p age(32) == "Woow... You are 32 years old"
###################################################

# def swim(time)
#   if time < 10
#     "#{time} seconds... New Record for 50 meters"
#   end
# end

# def swim(time)
#   "#{time} seconds... New Record for 50 meters" unless time >= 10
# end

# #test
# p swim(5) == "5 seconds... New Record for 50 meters"
# p swim(8) == "8 seconds... New Record for 50 meters"
###################################################
# def greater_than(a, b)
#   a > b ? "#{a} is greater than #{b}": "#{b} is greater than #{a}"
# end

# #test
# p greater_than(56, 70) == "70 is greater than 56"
# p greater_than(56, 58) == "58 is greater than 56"
# p greater_than(15, 20) == "20 is greater than 15"
###################################################
# def temperature(grade)
#   index = grade / 5.to_f
#   max = index.ceil * 5
#   min = max - 4
#   grade <= 40 ? message = "Temperature is between #{min} and #{max}" : "Temperature is greater than 40"
# end
#test
# p temperature(23) == "Temperature is between 21 and 25"
# p temperature(45) == "Temperature is greater than 40"
# p temperature(34) == "Temperature is between 31 and 35"
###################################################
# def language(speak)
#   (Array(speak) & ["JavaScript", "CSS", "Python", "R", "C++", "Unity", "Ruby", "Ruby on Rails", "Java"]).empty? ? "I don't like to code" : "I like #{speak}"
# end

# #test
# p language("Java") == "I like Java"
# p language("Unity") == "I like Unity"
# p language("Swin") == "I don't like to code"
###################################################
# def shopping(list)
#   basket_shopping = nil
#   basket_shopping ||= list.join(", ")
# end

# #test
# p shopping(["eggs", "milk", "bread", "orange juice"]) == "eggs, milk, bread, orange juice"
####################################################
# def bye(numbers)
#   numbers.map {|number| number < 10 ? "Smaller" : number}
#   end

# #test
# p bye([2, 4, 6, 10, 20, 40, 76]) == ["Smaller", "Smaller", "Smaller", 10, 20, 40, 76]
####################################################
# def char
#   Array('A'..'K').join(", ")
# end

# #test
# p char == "A, B, C, D, E, F, G, H, I, J, K"
####################################################
# def option(if_this_is_a_true_value, then_the_result_is_this, else_it_is_this)
#    if_this_is_a_true_value ? then_the_result_is_this : else_it_is_this
# end
#test
# p option(100, 2, 3) + 2 == 4
# p option(false, 6, 7) + 3 == 10
####################################################
# def validate(class_type)
#   class_type.respond_to?(:to_sym)
# end

# #test
# p validate([1, 3, 5]) == false
####################################################
# def check?
#  !!true || false == false && false ? "true" : "false"
# end

# #test
# p check? == "true"
####################################################















