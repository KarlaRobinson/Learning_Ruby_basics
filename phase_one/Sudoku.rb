#Pseudocodigo Sudoku
#DEFINE class Sudoku
  #DEFINE method INITIALIZE which accepts a string as a parameter
  #END INITIALIZE
  #DEFINE method to_s with input string
    #IMPLICIT RETURN of a scan of the string and PUTS sets of 9 characters
  #END to_s
  #DEFINE method check_num
    #FOR LOOP which iterates over 1..9
      #CALL search_rows method
      #CALL search_cols method
      #CALL search_boxes method
    #END FOR LOOP
  #DEFIN

#Sudoku
#create rows
#create cols
#create boxes
#index_row
#index_col
#index_box
#search_rows method
#search_cols method
#search_boxes method
#length

class Sudoku
  def initialize(string)
    @string = string
    #create_board
  end

  def create_board
    #prints board
    @string.scan(/.{9}|.+/).each {|row| puts row}
  end

  def solve!
    while @string.include? ("0")
      @string.scan( /\w/).each_with_index do |value, index|
        if value == "0"
        @index = index
        rows
        cols
        boxs
        index_row
        index_col
        index_box
        search_row
        search_col
        search_box
        check_zero
        length
        end
      end
    end

    puts 
    puts "Game solved!"
    create_board
  end

  def check_zero
    #calls all other methods and finds union between them
    search_row & search_col & search_box
  end

  def rows
    @rows = []
    @string.scan(/.{9}|.+/).each {|row| @rows << row}
    @rows
  end

  def cols
    @cols = []
    for j in 0...9
      column_holder = ""
      for i in 0...9
        column_holder << @rows[i][j] 
      end
      @cols << column_holder
    end
    @cols
  end

  def boxs
    @boxs = []
    for m in 0...3
      for k in 0...3
        box_holder = ""
        for j in 0...3
          for i in 0...3
            box_holder << @rows[j+(m*3)][i+(k*3)]
          end
        end
        @boxs << box_holder
      end
    end  
    @boxs
  end

  def index_row
    @index / 9 
  end

  def index_col
    @index  - (@index / 9) * 9
  end

  def index_box
    if index_row < 3 && index_col < 3
      0
    elsif index_row < 3 && index_col < 6
      1
    elsif index_row < 3 && index_col < 9
      2
    elsif index_row < 6 && index_col < 3
      3
    elsif index_row < 6 && index_col < 6
      4
    elsif index_row < 6 && index_col < 9
      5
    elsif index_row < 9 && index_col < 3
      6
    elsif index_row < 9 && index_col < 6
      7
    else 
      8
    end
  end

  def search_row
    # what numbers does this row include
    exist = @rows[index_row].gsub(/[0]/, "")
    Array(1..9) - exist.split(//).map {|elem| elem.to_i}
  end

  def search_col
    exist = @cols[index_col].gsub(/[0]/, "")
    Array(1..9) - exist.split(//).map {|elem| elem.to_i}
  end

  def search_box
    exist = @boxs[index_box].gsub(/[0]/, "")
    Array(1..9) - exist.split(//).map {|elem| elem.to_i}
  end

  def length
    #length is 1?
    if check_zero.length == 1
    @string[@index] = check_zero.pop.to_s
    else
    end
  end
end


game = Sudoku.new("742806519100740230005001070008000002610204053200000100070400800064078005821503907")

game.solve!