class People
  attr_accessor :name

  def initialize(input)
    @name = input
    @color = input
  end
end

class Man < People
   attr_reader :color

   def initialize(input)
     super
   end
end

class Woman < People

  def initialize(input)
    super
  end
end


#test
p man = Man.new("brown")
p woman = Woman.new("leyla")
p man.name == "brown"
# #=>true
p man.color == "brown"
# #=>true
#p man.color = "red"
# #=>...undefined method `color='... 
p woman.name == "leyla"
# #=>true
woman.name = "Karla"
p woman.name == "Karla"
# #=>true
p woman.color == "leyla"
# #=>...undefined method `color'... 
