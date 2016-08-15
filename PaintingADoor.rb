class HomeRepair

  def initialize(color)
    @color = color.capitalize
  end

  def spray_paint (color)
    @color = color.capitalize
    "The #{@color} door looks great!"
  end
end

big_door = HomeRepair.new('red')

#test
p big_door.spray_paint('yellow') == "The Yellow door looks great!"