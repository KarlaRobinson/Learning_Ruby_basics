### Adivina el numero
class NumberGuessingGame
  def initialize
    @rand_num = rand(0..9)
  end

  def guess(num)
    if num == @rand_num
      "You got it!" 
    elsif num < @rand_num
      "Too low"
    else 
      "Too high"
    end
  end
end


# Pruebas
game = NumberGuessingGame.new
p game.guess(9) #== "Too low"
p game.guess(8) #== "Too high"
p game.guess(7) #== "Too high"
p game.guess(1) #== "You got it!"

## Extra interactivo

class NumberGuessingGame
  def initialize
    @rand_num = rand(1..9)
  end

  def guess(num)
    if num == @rand_num
     "You got it!" 
    elsif num < @rand_num
      "Too low"
    else 
      "Too high"
    end
  end
end


def play
  game = NumberGuessingGame.new
  p "Make a guess:"
  x = gets.chomp.to_i
  p message = game.guess(x)

  until message == "You got it!"
  p "Make another guess:" 
  x = gets.chomp.to_i
  p message = game.guess(x)
  end
end

play











