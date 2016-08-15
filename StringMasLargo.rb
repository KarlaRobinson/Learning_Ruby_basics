def longest(array) 
  new_array = []
  long_el = []
  array.each do |x|
    new_array << x.length
  end
  i=0
  new_array.each do |x|
    long_el << array[i] if x == new_array.max
    i += 1
    puts i
  end
 long_el

end



p longest(['tres', 'pez', 'alerta', 'cuatro', 'tesla', 'tropas', 'siete'])# == ["alerta", "cuatro", "tropas"]
p longest(['gato', 'perro', 'elefante', 'jirafa']) #== ["elefante"]
p longest(['verde', 'rojo', 'negro', 'morado']) #== ["morado"]


