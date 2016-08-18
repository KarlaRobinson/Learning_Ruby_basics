#juego de gatos
def tic_tac_toe
  arr = Array.new(3){Array.new(3){["X","O"].sample}}
  arr.each do |row|
    row.each do |play|
    print play + "\t"
  end
  puts
  end
end

tic_tac_toe
puts
tic_tac_toe
puts
tic_tac_toe 


#segundo methodo fijando que haya como maximo 5 "x" y 4 "O" o vice versa
puts
puts "tic tac toe improved so that players take turns starting with X"

def tic_tac_toe
  arr = Array.new(3){Array.new(3)}

  for r in 1..9
    i = j = m = n = rand(0..2)

    until arr[i][j] == nil
      i = rand(0..2)
      j = rand(0..2)
    end
    if r.even?
      arr[i][j] = "O" 
    else
      arr[i][j] = "X"
    end
  end

  arr.each do |row|
    row.each do |play|
    print play.to_s + "\t"
  end
  puts
  end
end



tic_tac_toe
puts
tic_tac_toe
puts
tic_tac_toe




#nested arrays in hashes
table = [["Nombre", "Edad", "Genero", "Grupo", "Calificaciones"],["Rodrigo Garcia", 13, "Masculino", "Primero", [9,9,7,6,8]],["Fernanda Gonzales", 12, "Femenino", "Tercero", [6,9,8,6,8]],["Luis Perez", 13, "Masculino", "Primero", [8,7,7,9,8]],["Anna Espinosa", 14, "Femenino", "Segundo", [9,9,6,8,8]],["Pablo Moran", 11, "Maculino", "Segundo", [7,8,9,9,8]]]

# def index(array)
#   table
# end

#p h = Hash[arr.collect { |v| [v, f(v)] }]


def into_hash(array)
  new_arr = []
  for j in 1...array.length
    hash = {}
    for i in 0...array[0].length
      hash[array[0][i]] = array[j][i]
    end
    new_arr << hash
  end
  new_arr
end

#Tests
p into_hash(table)[3].keys == ["Nombre", "Edad", "Genero", "Grupo", "Calificaciones"]
p into_hash(table)[1]["Edad"] == 12
p into_hash(table)[1]["Genero"] == "Femenino"
p into_hash(table)[2]["Grupo"] == "Primero"
p into_hash(table)[2]["Calificaciones"] == [8, 7, 7, 9, 8]
p into_hash(table)[2].key([8, 7, 7, 9, 8]) == "Calificaciones"


