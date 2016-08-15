class Person
  @@age = 0
  
  def age
    @@age
  end

  def age= new_age
    @@age = new_age
  end
  #no modificar este método de clase
  def self.birthday
    @@age += 1
  end
end

alice = Person.new

#test
alice.age = 17
p alice.age == 17
#=> true
p alice.age 
p Person.birthday == 18
#=> true