class Vehicle
@@counter = 0

  def initialize
    @@counter += 1
  end
end

class Car < Vehicle
  def self.number_of_vehicles
    "This Superclass has created #{@@counter} vehicles"
  end
end

class Bus < Vehicle

end

#test
car_1 = Car.new
car_2 = Car.new
bus_1 = Bus.new

p Car.number_of_vehicles == "This Superclass has created 3 vehicles"
# => true