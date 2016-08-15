class Animal

  def speak
    "!"
  end
end

class Dog < Animal

  def initialize(name)
    @name = name
  end

  def speak
    "#{@name} say Guau" + super
  end
end

class Cat < Animal
  def speak
    "Hello" + super
  end
end

#test
drako = Dog.new("Drako")
peto = Cat.new
p drako.speak == "Drako say Guau!"         
# => true
p peto.speak == "Hello!"           
# => true