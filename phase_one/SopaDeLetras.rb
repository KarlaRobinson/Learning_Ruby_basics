
class Board
@@game = -1
@@boards_templates =  ["POEMAXCXXXXAXXSXNXAAXCMXDXIXXNROXXOXNXXR", "XXXXPXXXXLXAMXAXIEXTXDLXAXNOXNMANGOXSXXX", "OJORXXXXXXXEXXOXDXRXXRGLXXEXUXNVXZXXXXAX"]

  def initialize
     complete_board!(@@boards_templates[@@game])
     @@game += 1
     @string = @@boards_templates[@@game]
      create_rows(complete_board!(@string))
      create_cols(create_rows(complete_board!(@string)))
      create_diagonals(complete_board!(@string))
      to_s
  end

  def to_s
    complete_board!(@string).scan(/.{5}|.+/).each {|letter_set| puts letter_set}
  end

  def create_rows(string)
    @rows = []
    string.scan(/.{5}|.+/).each {|letter_set| @rows << letter_set}
    @rows
  end

  def create_cols(string)
    @cols = []
    for j in 0...5
      column_holder = ""
      for i in 0...8
        column_holder << string[i][j] 
      end
      @cols << column_holder
    end
  @cols
  end

  def create_diagonals(string)
    new_array = ["000000000000000"]
    string.scan(/.{5}|.+/).each {|letter_set| new_array << "00000" + letter_set + "00000"}
    new_array << "000000000000000"
    @diagonals = []
    for j in 0..5
      diag_holder = ""
      for i in 5..9
        diag_holder << new_array[j][i] if new_array[j][i] != "0"
        j += 1
      end
      @diagonals << diag_holder
    end
    for j in 0..5
      diag_holder = ""
      for i in [9,8,7,6,5]
        diag_holder << new_array[j][i] if new_array[j][i] != "0"
        j += 1
      end
      @diagonals << diag_holder
    end
  @diagonals
  end

  def include?(word)
  holder = false
    (@rows + @cols + @diagonals).each do |elem|
      if elem.include? (word)
        holder = true
      elsif elem.include? (word.reverse)
        holder = true
      end
    end
    holder
  end

  private

  def complete_board!(string)
    while string.include? ("X") 
    string.sub!(/["X"]/, Array("A".."Z").sample)
    end
    string
  end
end


puts "game 1"
board1 = Board.new

p board1.include?("POEMA") == true
p board1.include?("CANCION") == true
p board1.include?("RONDAS") == true
p board1.include?("RIMAS") == true
p board1.include?("XXXXX") == false

puts "game 2"
board2 = Board.new

p board2.include?("MANGO") == true
p board2.include?("SANDIA") == true
p board2.include?("MELON") == true
p board2.include?("PLATANO") == true
p board2.include?("XXXXX") == false 

puts "game 3"
board3 = Board.new

p board3.include?("ROJO") == true
p board3.include?("VERDE") == true
p board3.include?("AZUL") == true
p board3.include?("NEGRO") == true
p board3.include?("XXXXX") == false
#board1
