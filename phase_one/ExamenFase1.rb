require 'faker'

#Clase CreditCard
class CreditCard
attr_reader :name, :number, :expiration, :cvc
attr_accessor :status

  def initialize
    @name = %w(AmericanExpress Visa MasterCard).sample
    @number = Faker::Business.credit_card_number
    @expiration = Faker::Business.credit_card_expiry_date
    @cvc = Array(1..9).sample(4).join
    @status = %w(active inactive).sample
  end
end


#Cinco instancias de CreditCard
card1 = CreditCard.new
card2 = CreditCard.new
card3 = CreditCard.new
card4 = CreditCard.new
card5 = CreditCard.new

#Array con cinco objetos de tarjetas de crédito
cards = [card1, card2, card3, card4, card5]


#tests 

cards.each do |card|
   puts "#{card.name} responds to:"
   puts "\tName: #{card.respond_to?(:name) == true}"
   puts "\tNumber: #{card.respond_to?(:number) == true}"
   puts "\tExpiration: #{card.respond_to?(:expiration) == true}"
   puts "\tcvc: #{card.respond_to?(:cvc) == true}"
   puts "\tGet status: #{card.respond_to?(:status) == true}"
   puts "\tSet status: #{card.respond_to?(:status=) == true}"
   puts "\n\n"
end

# print table
table = []
%w(name number expiration cvc status).each {|word| table << word}
cards.each do |object|
  table << object.name
  table << object.number.gsub( /-/, "")
  table << "#{object.expiration.month}/#{object.expiration.year.to_s[2,3]}"
  table << object.cvc
  table << object.status
  end

  i = 0
  table.each do |entry|
    print "|"
    print "#{entry}".center(20)
    i += 1
    if   i == 5
      print "|"
      puts
      puts "_" * 110
    elsif i % 5 == 0
      print "|"
      puts
    end
  end

###########################################################################
# Herencia
class Athlete
attr_accessor :total_distance, :total_time

  def initialize(total_distance = 0, total_time = 0)
    @total_distance = total_distance
    @total_time = total_time
  end

  def speed
    if @total_time > 0 
      speed = (@total_distance / @total_time.to_f).round(2)
    else
      speed = 0
    end
    speed
  end

  def new_workout(new_distance, new_time)
    @total_distance += new_distance
    @total_time += new_time
  end

  def summary
    "#{@total_distance} meters, time: #{@total_time} seconds, speed: #{speed} m/s"
  end

  def speed_record
    speed < 3.3 ? true :false
  end
end

class Runner < Athlete
  def run
    "Ran #{summary}"
  end
end

class Swimmer < Athlete
  def swim
    "Swam #{summary}"
  end
end

class Cyclist < Athlete
  def ride_bike
     "Rode bike" + summary 
  end
end

#tests

#instancias de atletas con distancia en metros
runner = Runner.new()
swimmer = Swimmer.new(50, 10)
cyclist = Cyclist.new(70, 27)

athletes = [runner, swimmer, cyclist]

athletes.each do |athlete|
  #¿qué tipo de atleta es?
  puts "#{athlete.class} responds to:"
  puts "\tAthlete speed: #{athlete.respond_to?(:speed) == true}"
  puts "\tGet Athlete time: #{athlete.respond_to?(:total_time) == true}"
  puts "\tSet Athlete time: #{athlete.respond_to?(:total_time=) == true}"
  puts "\tSpeed record: #{athlete.respond_to?(:speed_record) == true}"
  puts "\tGet Distance: #{athlete.respond_to?(:total_distance) == true}"
  puts "\tSet Distance: #{athlete.respond_to?(:total_distance=) == true}"
  puts "\trun method: #{athlete.respond_to?(:run) == true}" if athlete == runner
  puts "\tswim method: #{athlete.respond_to?(:swim) == true}" if athlete == swimmer
  puts "\tride_bike method: #{athlete.respond_to?(:ride_bike) == true}" if athlete == cyclist
  puts "\n\n"
end

#test for runner

#test para runner con distancia = 0
p runner.run == "Ran 0 meters, time: 0 seconds, speed: 0 m/s"
#test para runner al hacer ejercicio, incrementa distancia = 20 metros y tiempo = 7 segundos

runner.new_workout(20, 7) 
p runner.run == "Ran 20 meters, time: 7 seconds, speed: 2.86 m/s"

runner.new_workout(40, 5) 
p runner.run == "Ran 60 meters, time: 12 seconds, speed: 5.0 m/s"

#test para swimmer con distancia = 50
p swimmer.swim == "Swam 50 meters, time: 10 seconds, speed: 5.0 m/s"


###############################################################################






#RaceCar class
class RaceCar
  LAP = 100
  attr_accessor :team
  attr_reader :level, :speed, :name

  def initialize(name, team = nil)
    race
    @speed = average_speed
    @level = level
    @team = team
    @name = name
  end

  def race
    lap1 = rand(5..9).to_f
    lap2 = rand(5..9).to_f
    lap3 = rand(5..9).to_f
    lap4 = rand(5..9).to_f
    lap5 = rand(5..9).to_f
    @lap_times = lap1 + lap2 + lap3 + lap4 + lap5
  end

  #método para obtener velocidad promedio
  def average_speed
    ((5 * LAP) / @lap_times.to_f).round(2)
  end

  #método que muestra nivel de cada race car
  def level
    if @speed < 13
      "Beginner"
    elsif @speed < 15
      "Normal"
    elsif @speed < 17
      "Medium"
    else
      "Advanced"
    end
  end

  def show_name_level
    puts "The racecar '#{@name}' has a/n '#{level.downcase}' level, and is on '#{@team}'."
  end
end

#Team class
class Team 
  attr_reader :cars

  def initialize(arr_of_cars)
    @cars = arr_of_cars
    add_car
    @team_average = average_speed_of_team
  end

  def add_car
    @cars.each do |car|
      car.team = "Team one"
    end
  end

  def average_speed_of_team
  team_speed = 0
    @cars.each do |car|
      team_speed += car.speed
    end
  team_speed = (team_speed / @cars.length.to_f).round(2)
  end

  def print_table
    table = ["Name", "Level"]
    @cars.each do |car|
      table << car.name
      table << car.level
    end
    i = 0
    table.each do |entry|
      print "|"
      print "#{entry}".center(20)
      i += 1
      if   i == 2
        print "|"
        puts
        puts "_" * 45
      elsif i % 2 == 0
        print "|"
        puts
      end
    end
  end
end



#instancias de RaceCar
car1 = RaceCar.new("Power")
car2 = RaceCar.new("Tsunami")
car3 = RaceCar.new("Thunderbolt")
car4 = RaceCar.new("MegaEngine")
car5 = RaceCar.new("Stallion")
car6 = RaceCar.new("Duster")





#tests

p "car1: #{car1.average_speed} m/s"
#ej. car1: 9.5 m/s
p "car2: #{car2.average_speed} m/s"
#ej. car2: 12.01 m/s
p "car3: #{car3.average_speed} m/s"
#ej. car3: 10.65 m/s
p "car4: #{car4.average_speed} m/s"
#ej. car4: 11.0 m/s
p "car5: #{car5.average_speed} m/s"
#ej. car5: 10.15 m/s
p "car6: #{car6.average_speed} m/s"
#ej. car6: 15.51 m/s

#create a team of cars 
team1 = [car1, car2, car3, car4, car5]
team_one = Team.new(team1)


def search(name, team)
  team.cars.each do |car|
    if car.name == name
      return "#{name} is a racer"
    else
      puts "#{name} is not on #{team}"
    end
  end
  exists?
end

#test para buscar race car en equipo team_one
p search("Power", team_one) == "Power is a racer"

#calculate average speed of team
p team_one.average_speed_of_team
#ej. 10.66 

car1.show_name_level

team_one.print_table








