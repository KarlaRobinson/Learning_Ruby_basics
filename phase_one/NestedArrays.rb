# Chess board

#hard-coding
array = [["B_castle", "B_horse", "B_bishop", "B_king", "B_queen", "B_bishop",  "B_horse","B_castle"],["B_pawn","B_pawn","B_pawn","B_pawn","B_pawn","B_pawn","B_pawn","B_pawn"],["","","","","","","",""],["","","","","","","",""],["","","","","","","",""],["","","","","","","",""],["W_pawn","W_pawn","W_pawn","W_pawn","W_pawn","W_pawn","W_pawn","W_pawn"],["W_castle", "W_horse", "W_bishop", "W_queen", "W_king", "W_bishop",  "W_horse","W_castle"]]

puts "hard_coding:"
array.each do |row| 
  row.each {|piece| print piece.ljust(10) + "|"}
   puts
   8.times{print "----------+"}
   puts
  end



def chess_board
players = ["C", "H", "B", "K", "Q", "B",  "H","C"]
  print "+"  
  8.times{print "--+"}
  puts
  print "|"
  Array(1..8).each do |i|
    case i
      when 1
        players.each {|piece| print  piece + "B|"}
      when 8
        players.reverse.each {|piece| print  piece + "W|"}
      when 2
        8.times{print "P" + "B|"}
      when 7
        8.times{print "P" + "W|"}
      else
        8.times{print " " + " |"}
    end
    puts
    print "+"
    8.times{print "--+"}
    puts 
    print "|" unless i == 8
  end
end

puts
puts "with_method:"
chess_board


## Tabla de datos

table = [["Nombre", "Edad", "Genero", "Grupo", "Calificaciones"],["Rodrigo Garcia", 13, "Masculino", "Primero", [9,9,7,6,8]],["Fernanda Gonzales", 12, "Femenino", "Tercero", [6,9,8,6,8]],["Luis Perez", 13, "Masculino", "Primero", [8,7,7,9,8]],["Anna Espinosa", 14, "Femenino", "Segundo", [9,9,6,8,8]],["Pablo Moran", 11, "Maculino", "Segundo", [7,8,9,9,8]]]

p table[0][4]  == "Calificaciones"
p table[2][1]  == 12
p table[2][2]  == "Femenino"
p table[3][3]  == "Primero"
p table[3][4]  == [8, 7, 7, 9, 8]
p table[4][4][2]  == 6








