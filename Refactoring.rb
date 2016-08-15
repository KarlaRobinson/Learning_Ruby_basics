# Formando Arrays 2

# Define el método array_index que recibe como argumento un array de letras, así como un factor y deberá regresar un arreglo como el siguiente:

# p array_index(["c", "b", "a"], 2) == [["c", [1, 2]], ["b", [1, 2]], ["a", [1, 2]]]
# p array_index(["a"], 3) == [["a", [1, 2, 3]]]

## Viejo ########
def array_index(array, num)
  new_array = []
  array.map do |elem|
    elem = Array(elem)
    indice = []
    i = 1
    num.times do
     indice << i
     i += 1
    end
    elem << indice
    new_array << elem
  end
  new_array
end

p array_index(["c", "b", "a"], 2) == [["c", [1, 2]], ["b", [1, 2]], ["a", [1, 2]]]
p array_index(["a"], 3) == [["a", [1, 2, 3]]]

## Nuevo ########

def array_index(array, num)
  index = [Array(1..num)]
  array.product(Array(index))
end

p array_index(["c", "b", "a"], 2) == [["c", [1, 2]], ["b", [1, 2]], ["a", [1, 2]]]
p array_index(["a"], 3) == [["a", [1, 2, 3]]]



