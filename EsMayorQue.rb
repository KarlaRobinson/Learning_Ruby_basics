class Cat
  CAT_YEARS = 7

  def initialize(age)
    @age = age
  end

  def es_mayor_que?(object_to_be_compared)
   compare(find_object_age(object_to_be_compared))
  end

  def age
    @age *= 7
  end

  protected
  def find_object_age(object_to_be_compared)
    object_to_be_compared.age
  end

  private
  def compare(object_age)
    @age > object_age
  end
end

#test
katty = Cat.new(2)
peto = Cat.new(4)
p katty.age == 14
p peto.age == 28
p katty.es_mayor_que?(peto) == false
#=>true
p peto.es_mayor_que?(katty) == true
#=>true
