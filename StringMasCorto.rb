def shortest(array) 
  new_array = []
  short_el = []
  array.each do |x|
    new_array << x.length
  end
  i=0
  new_array.each do |x|
    short_el << array[i] if x == new_array.min
    i+=1
  end
 short_el

end



p shortest(['uno', 'dos', 'tres', 'cuatro', 'cinco']) == ["uno", "dos"]
p shortest(['gato', 'perro', 'elefante', 'jirafa']) == ["gato"]
p shortest(['verde', 'rojo', 'negro', 'morado']) == ["rojo"]


