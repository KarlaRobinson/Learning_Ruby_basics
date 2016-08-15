def dudeney_number?(num)
  sum = 0
  num.to_s.chars.map{|x| x.to_i}.each {|x| sum += x}
  sum == Math.cbrt(num)
end


# Pruebas

p dudeney_number?(1) == true
p dudeney_number?(125) == false
p dudeney_number?(512) == true
p dudeney_number?(1_728) == false
p dudeney_number?(5_832) == true