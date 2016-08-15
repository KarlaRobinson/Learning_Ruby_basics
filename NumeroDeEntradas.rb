def user
  i = 0
  puts "Cual es un numero?"
  num = gets.chomp
  until num == "Ya"
    i += 1
    puts "Cual es otro numero?"
    num = gets.chomp
    if num != "Ya"
      p "Tu numero es #{num}"
    else
      p "Has terminado!!!"
    end
  end 
  "Numero de entradas: #{i}."
end

  p user