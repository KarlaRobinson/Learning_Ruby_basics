class Vehicle
attr_reader :age
  
  def initialize(*args)
    @age = 0
  end

  def what_am_i?
    # Este método va a ser utilizado por varias clases y deberá regresar 
    # el nombre de la clase desde la cual se corrió.
    # ej.
    # bocho = Car.new
    # bocho.what_am_i? => Car
    self.class.name
  end

  def age!
    @age += 1
  end

  def color
    "red"
  end
end

class Motorized < Vehicle

  def has_motor
    true
  end

  def tank_size
    "large"
  end

  def refuel
    true
  end
end

class Motorbike < Motorized

  def number_of_wheels
    2
  end

  def number_of_gears
    4
  end
end

class Car < Motorized

  def number_of_wheels
    4
  end

  def number_of_gears
    4
  end
end

class Bicycle < Vehicle

  def initialize(num)
    @num = num
    super
    @age = 3
  end

  def number_of_wheels
    @num
  end

  def number_of_gears
    6
  end
end

class Skateboard < Vehicle

  def number_of_wheels
    4
  end
end

moto = Motorbike.new
car = Car.new
bike = Bicycle.new(8)
skateboard = Skateboard.new

vehicles = [moto, car, bike, skateboard]


vehicles.each do |vehicle|
  vehicle.age!
  puts "#{vehicle.what_am_i?} responds to:"
  puts "\tNumber of wheels: #{vehicle.respond_to?(:number_of_wheels) == true}"
  puts "\tColor: #{vehicle.respond_to?(:color) == true}"
  puts "\tAge!: #{vehicle.respond_to?(:age!) == true}"
  puts "\tHas motor: #{vehicle.respond_to?(:has_motor) == true}"
  puts "\tTank size: #{vehicle.respond_to?(:tank_size) == true}"
  puts "\tRefuel: #{vehicle.respond_to?(:refuel) == true}"
  puts "\tNumber of gears: #{vehicle.respond_to?(:number_of_gears) == true}"
  puts "\tAge: #{vehicle.age}"
  puts "\n\n"
end