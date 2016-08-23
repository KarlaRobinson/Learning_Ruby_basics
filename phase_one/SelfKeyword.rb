puts "self es igual a: #{self}"
#=> self es igual a: main

class DummyClass
  puts "Esto esta corriendo cuando se define la clase"
  puts "En este contexto self es igual a: #{self}"
end

dummy1 = DummyClass.new
# Esto esta corriendo cuando se define la clase
# En este contexto self es igual a: DummyClass

class DummyClass

    def intance_method
        puts "Dentro de un método de instancia"
        puts "En este contexto self es igual a: #{self}"
    end

    def self.class_method
        puts "Dentro de un método de clase"
        puts "En este contexto self es igual a: #{self}"
    end
end

dummy_class = DummyClass.new()
puts dummy_class.intance_method

# Dentro de un método de instancia
# En este contexto self es igual a: #<DummyClass:0x15d6110>

dummy_class = DummyClass.new()
puts DummyClass.class_method  
# Dentro de un método de clase
# En este contexto self es igual a: DummyClass


#self is a default method which calls the object that it is within

#calling self in the global scope returns main
#calling self in a class returns the name of the class it is in
#calling self in an instance method returns the instance object of the class
#and calling self withing a class method return the name of the class it is in