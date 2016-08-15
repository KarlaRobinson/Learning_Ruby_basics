class Window

  def initialize(color,size)
    @color = color
    @size = size
  end

  def color
    @color
  end

  def size= value
    @size = value
  end

  def open
    "open #{@color} window"
  end

  def close
    "close window of #{@size} meters"
  end
end

window_1 = Window.new("green", 10)

#test
p window_1.color == "green"
p window_1.size = 5
p window_1.open == "open green window"
p window_1.close == "close window of 5 meters"