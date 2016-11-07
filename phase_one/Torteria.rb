#programa para administrar el tiempo de horneado de los diferentes tipos de tortas

# Necesita preparar diferentes tipos de tortas.
# Necesita meter las tortas por lotes al horno.
# Y lo más importante saber cuando sacarlas.

# (1) preparar diferentes tipos de tortas
class Sandwich_Maker
attr_reader :time, :name

  def initialize(name: 'plain', bread: 'white', veggie1: 'lettuce', veggie2: 'tomatoe', meat: 'ham', cheese: 'provolone', sauce: 'chipotle', sliced: false, time: 5)
    @bread = bread
    @veggie1 = veggie1
    @veggie2 = veggie2
    @cheese = cheese
    @meat = meat
    @sauce = sauce
    @sliced = sliced
    @time = time
    @name = name
  end

  def sliced
    @sliced ? true : false
  end
end

sandwich1 = Sandwich_Maker.new
sandwich2 = Sandwich_Maker.new(name: 'BLT', meat: 'bacon', cheese: 'none', sliced: true, time: 10)
sandwich1.sliced
sandwich3 = Sandwich_Maker.new(name: 'healthy', bread: 'wholewheat', time: 15)
sandwich4 = Sandwich_Maker.new(name: 'Katz', meat: 'cornedbeef', time: 20)
sandwich5 = Sandwich_Maker.new(name: 'American', cheese: 'swiss', meat: 'none', time: 3)
sandwich6 = Sandwich_Maker.new(name: 'Veggie', meat: 'none')
sandwich7 = Sandwich_Maker.new(name: 'French', bread: 'croissant', time: 7)
sandwich8 = Sandwich_Maker.new(name: 'Philly', meat: 'steak', time: 8)

# (2) funcionalidad para que puedas meter y sacar tortas del horno
class Oven

  def initialize(tray)
    @tray = tray
  end

  def bake(cook_time)
    @cold = []
    @perfect = []
    @burnt = []
    @tray.each do |sandwich|
      if sandwich.time < cook_time
        @cold << sandwich.name
      elsif sandwich.time == cook_time
        @perfect << sandwich.name
      else
        @burnt << sandwich.name
      end
    end
  end

  def cold?
    @cold
  end

  def perfect?
    @perfect
  end

  def burnt?
    @burnt
  end
end

tray = [sandwich1, sandwich2, sandwich3, sandwich4, sandwich5, sandwich6, sandwich7, sandwich8]

oven1 = Oven.new(tray)
cook_time = [10, 5, 15, 20, 3, 7, 8].sample
oven1.bake(cook_time)


puts "Today the Deli made #{tray.length} sandwiches."
puts "They were baked at 375 degrees for #{cook_time} min."
puts "#{oven1.cold?.length} sandwich/es came out cold because the bake time was too short. (#{oven1.cold?.join(", ")})"
puts "#{oven1.perfect?.length} sandwich/es came out perfect because the bake time was just right. (#{oven1.perfect?.join(", ")})"
puts "#{oven1.burnt?.length} sandwich/es came out burnt because the bake time was too long. (#{oven1.burnt?.join(", ")})"








