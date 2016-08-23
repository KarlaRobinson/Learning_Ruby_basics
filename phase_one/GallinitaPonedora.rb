class LayingHen
attr_reader :hen_age

  def initialize
    @hen_age = 0
    @eggs = 0
    @hatched_hours = 0
  end

  # Ages the hen one month, and lays 4 eggs if the hen is older than 3 months
  def age!
    @hen_age += 1
    @eggs += 4 if @hen_age > 3
  end

  # Returns +true+ if the hen has laid any eggs, +false+ otherwise
  def any_eggs?
    @eggs > 0 ? true : false
  end

  # Returns an Egg if there are any
  # Raises a NoEggsError otherwise
  def pick_an_egg!
    #Next line doesn't make sense because loop does not do anything until the hen has laid an egg
    raise NoEggsError, "The hen has not laid any eggs" unless self.any_eggs?

    # egg-picking logic goes here
    @eggs -= 1
    egg = Egg.new(@hatched_hours)
  end

  # Returns +true+ if the hen can't lay eggs anymore because of its age, +false+ otherwise.
  # The max age for a hen to lay eggs is 10 
  def old?
    @hen_age > 10 ? true : false
  end

  def increase_hatched_hour(hours)
    @hatched_hours = hours
  end
end

class Egg
  # Initializes a new Egg with hatched hours +hatched_hours+
  def initialize(hatched_hours)
    @hatched_hours = hatched_hours
  end

  # Return +true+ if hatched hours is greater than 3, +false+ otherwise
  def rotten?
    @hatched_hours > 3 ? true : false
  end
end

hen = LayingHen.new
basket = []
rotten_eggs = 0


hen.age! until hen.any_eggs?

puts "Hen is #{hen.hen_age} months old, its starting to lay eggs."
puts ""

until hen.old?

  # The time we take to pick up the eggs
  hours = rand(5)
  hen.increase_hatched_hour(hours)

  while hen.any_eggs?
    egg = hen.pick_an_egg!

    if egg.rotten?
      rotten_eggs += 1
    else
      basket << egg
    end
  end

  puts "Month #{hen.hen_age} Report"
  puts "We took #{hours} hour(s) to pick the eggs"
  puts "Eggs in the basket: #{basket.size}"
  puts "Rotten eggs: #{rotten_eggs}"
  puts ""

  # Age the hen another month
  hen.age!
end

puts "The hen is old, she can't lay more eggs!"
puts "The hen laid #{basket.size + rotten_eggs} eggs"
if rotten_eggs == 0
  puts "CONGRATULATIONS NO ROTTEN EGGS" 
else
  puts "We pick #{rotten_eggs} eggs too late so they became rotten"
end

## a new egg is created four times for each month but all will be rotten or all will be good because we only set the hacthing_hours once for each month