class ConnectFour

  def initialize  
  @cols = Array.new(7){["0e", "e1", "e2", "3e", "4e", "5e"]}
  end

  def rows
    rows = []
    for i in 0..5
      row_holder = []
      @cols.each do |col|
        row_holder << col[i]
      end
      rows << row_holder
    end
    rows
  end

  def print_board 
    clear_screen!
    move_to_home!

    rows.each do |row|
      row.each do |cell|
        if cell.include? ("e")
          print " |"
        else
          print "#{cell}|"
        end
      end
      reputs
    end
    reputs "0|1|2|3|4|5|6|"
  end

  def diagonals
    # num = @cols.length + @cols[0] - 1
    # @cols.each do |col|
    #   col.each do |cell|

    #   end
    # end
  end

  def drop_chip!(color, col_num = rand(0..6))
    completed = 0
    until completed == 1
      5.downto(0) do |i|
        if @cols[col_num][i].include? ("#{i}")
          @cols[col_num][i] = color
          completed = 1
        else
          completed = 0
        end
      break if completed == 1
      end
      col_num = rand(0..6)
    end
    print_board
    puts
  end

  def four_in_a_row?(color)
    value = false
    rows.each do |row|
      if row.join.include? (color * 4)
        value = true
        break
      end
    end
    value
  end

  def four_in_a_col?(color)
    value = false
    @cols.each do |col|
      if col.join.include? (color * 4)
        value = true
        break
      end
    end
    value
  end

  def four_in_a_diagonal? 
  end

  def finished?(color)
    four_in_a_row?(color) || four_in_a_col?(color) == true
  end

  def auto_play
    print_board
    until finished?("B") do
    sleep(0.5)
    drop_chip!("W")
    break if finished?("W")
    sleep(0.5)
    drop_chip!("B")
    end
    p winner
  end

  def winner
    finished?("B") ? "Team Black is the winner!" : "Team White is the winner!"
  end

  def interactive
    puts
    puts
    puts "_________________________________________________________________________"
    puts "Welcome to Connect Four!"
    puts "This is a two person game where each player adds a token of their color (Black, or White) to the column of their choice. The first player to get 4 token's of their color horizontally, vertically or diagonally in a row, wins! Black goes first."
    puts "_________________________________________________________________________"
    until finished?("W")
      puts
      print_board
      sleep(1)
      puts "Player Black's Turn: in which column do you want to add your piece?"
      move = gets.chomp
      sleep(0.5)
      drop_chip!("B", move.to_i)
      sleep(1)
      break if finished?("B")
      puts "Player White's Turn: in which column do you want to add your piece?"
      move = gets.chomp
      sleep(0.5)
      drop_chip!("W", move.to_i)
    end
    puts "Nice work! #{winner}"
  end

  def clear_screen!
    print "\e[2J"
  end

  def move_to_home!
    print "\e[H"
  end

  def reputs(str = '')
    puts "\e[0K" + str
  end
end

game = ConnectFour.new
game.auto_play
#game.interactive
=======
class ConnectFour

	def initialize	
	@cols = Array.new(7){["0e", "e1", "e2", "3e", "4e", "5e"]}
	end

	def rows
		rows = []
		for i in 0..5
			row_holder = []
			@cols.each do |col|
				row_holder << col[i]
			end
			rows << row_holder
		end
		rows
	end

	def print_board	
		rows.each do |row|
			row.each do |cell|
				if cell.include? ("e")
					print " |"
				else
					print "#{cell}|"
				end
			end
			puts
		end
		puts "0|1|2|3|4|5|6|"
	end

	def diagonals
		# num = @cols.length + @cols[0] - 1
		# @cols.each do |col|
		# 	col.each do |cell|

		# 	end
		# end
	end

	def drop_chip!(color, col_num = rand(0..6))
		completed = 0
		until completed == 1
			5.downto(0) do |i|
				if @cols[col_num][i].include? ("#{i}")
					@cols[col_num][i] = color
					completed = 1
				else
					completed = 0
				end
			break if completed == 1
			end
			col_num = rand(0..6)
		end
		print_board
		puts
	end

	def four_in_a_row?(color)
		value = false
		rows.each do |row|
			if row.join.include? (color * 3)
				value = true
				break
			end
		end
		value
	end

	def four_in_a_col?(color)
		value = false
		@cols.each do |col|
			if col.join.include? (color * 4)
				value = true
				break
			end
		end
		value
	end

	def four_in_a_diagonal?	
	end

	def finished?(color)
		four_in_a_row?(color) || four_in_a_col?(color) == true
	end

	def auto_play
		print_board
		until finished?("B") do
		drop_chip!("W")
		break if finished?("W")
		drop_chip!("B")
		end
		p winner
	end

	def winner
		finished?("B") ? "Team Black is the winner!" : "Team White is the winner!"
	end

	def interactive
		puts
		puts
		puts "_________________________________________________________________________"
		puts "Welcome to Connect Four!"
		puts "This is a two person game where each player adds a token of their color (Black, or White) to the column of their choice. The first player to get 4 token's of their color horizontally, vertically or diagonally in a row, wins! Black goes first."
		puts "_________________________________________________________________________"
		until finished?("W")
			puts
			print_board
			sleep(1)
			puts "Player Black's Turn: in which column do you want to add your piece?"
			move = gets.chomp
			sleep(0.5)
			drop_chip!("B", move.to_i)
			sleep(1)
			break if finished?("B")
			puts "Player White's Turn: in which column do you want to add your piece?"
			move = gets.chomp
			sleep(0.5)
			drop_chip!("W", move.to_i)
		end
		puts "Nice work! #{winner}"
	end

	def clear_screen!
	  print "\e[2J"
	end
end

game = ConnectFour.new
game.auto_play
game.interactive

