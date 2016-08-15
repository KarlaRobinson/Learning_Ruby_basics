class Person

  def initialize(name,birth_yr)
    @name = name.capitalize
    @birth_yr = birth_yr
  end

  def age
    "#{@name} is #{years_old} years old."
  end

  private
  def years_old
    Time.now.year - @birth_yr
  end
end

carlos = Person.new("carlos", 1986)
martha = Person.new("martha", 1990)


#test
p carlos.age == "Carlos is 30 years old."
#=>true
p martha.age == "Martha is 26 years old."
#=>true
p carlos.years_old
#=>private method `years_old'...(NoMethodError)