class Animal

  def facts
    "I am a living creature."
  end
end

class Mammal < Animal
  
  def facts
    "I am warm blooded and " + super
  end

end

class Dog < Mammal
 DOG = "Since I am a Dog," 

  def facts
    "#{DOG} I can fetch and " + super
  end
end

class Fish < Animal
FISH = "Since I am a Fish,"   

  def facts
    "#{FISH} I can swim and " + super
  end
end

class Cat < Mammal
 CAT = "Since I am a Cat," 

 def facts
    "#{CAT} I can purr and " + super
  end
end

goat = Animal.new
labrador = Dog.new
beta = Fish.new
siamese = Cat.new
elephant = Mammal.new


#test
#Aquí deben ir las pruebas correspondientes
p goat.facts == "I am a living creature."
p labrador.facts == "Since I am a Dog, I can fetch and I am warm blooded and I am a living creature."
p beta.facts == "Since I am a Fish, I can swim and I am a living creature."
p siamese.facts == "Since I am a Cat, I can purr and I am warm blooded and I am a living creature."
p elephant.facts == "I am warm blooded and I am a living creature."


