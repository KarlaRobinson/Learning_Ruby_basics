def elefante(num)
  for i in 1..num
     puts "#{i} elefante se columpiaba sobre la tela de una araña, como veía que resistía fueron a llamar a otro elefante."
  end
end

p elefante(9)



def beer_on_the_wall(num)

 num.downto(1) { |i| puts "#{i} bottles of beer on the wall."}
end

p beer_on_the_wall(9)