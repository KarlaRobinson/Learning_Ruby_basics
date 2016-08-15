

#Strings en indices nones de un arreglo
def odd_indexed(arr)
  arr.find_all {|loc| arr.index(loc).even?}
end

#String e tamaño mayor a 5
def long_strings(arr)
  arr.find_all {|word| word.length >= 5}
end

#Primer string que empieza con 'h'
def start_with_h(arr)
  arr.find {|word| word[0] == "h"}
end

# Que todos los strings empiecen con mayuscula
def capitalize_array(arr)
  arr.map {|name| name = name.capitalize}
end

# Agrupar strings por su primera letra
def group_by_starting_letter(string)
  string.group_by {|item| item[0]}
end

# Contar el número de 'r' en un string
def number_of_r(str)
  str.count("r")
end

# Pruebas

p odd_indexed(["uno", "dos", "tres", "cuatro", "cinco"]) == ["uno", "tres", "cinco"]
p long_strings(["rojo", "morado", "azul", "negro", "blanco", "naranja"]) == ["morado", "negro", "blanco", "naranja"]
p start_with_h(["manzana", "naranja", "sandia", "higo", "melon", "platano"]) == "higo"
p capitalize_array(["manuel", "juan", "rodrigo", "ana", "paola"]) == ["Manuel", "Juan", "Rodrigo", "Ana", "Paola"]
p group_by_starting_letter(["arbol", "amarillo", "angel", "burro", "barco"]) == {"a"=>["arbol", "amarillo", "angel"], "b"=>["burro", "barco"]}
p number_of_r("ferrocarril") == 4













