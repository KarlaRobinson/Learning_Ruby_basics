class Cat
  @@meters = 0
 def initialize(name)
    @name = name
  end
  def self.meow
    "Miau... Miau..."
  end
  def run(m = 0)
    @@meters += m
    "Corriendo #{@@meters} mts..."
  end
  def jump
    "Saltando..."
  end
end

cat_1 = Cat.new("Spot")
cat_5 = Cat.new("Lucky")

#test

cat_3 = Cat.new("catty")

p cat_1.jump == "Saltando..."
p cat_5.jump == "Saltando..."
p Cat.meow == "Miau... Miau..."
p cat_3.run == "Corriendo 0 mts..."
p cat_3.run(20) == "Corriendo 20 mts..."
p cat_3.run(10) == "Corriendo 30 mts..."
p cat_3.run(10) == "Corriendo 40 mts..."