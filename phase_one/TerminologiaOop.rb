#http://blog.makeitreal.camp/programacion-orientada-por-objetos-ruby/

# Inheritance: Used with classes. Allows a subclass to access all of the methods of its superclass. Action on the subclass or the child implies, alters, or overrides an action on the parent. 

class Vehicle
  def carry_people?
    true
  end
end

class Bicycle < Vehicle
end

bike = Bicycle.new
p bike.carry_people? == true

# Composition: It is equivalent to inheritance, or another way to do the same thing. Instead of creating a child and parent class, one class creates a new object of the other class and in this way accesses all it's methods through this object.
class Dog
  def eats?
    true
  end
end

class Poodle
  def initialize
    @Dog = Dog.new
  end

  def eats?
    @Dog.eats?
  end
end

poodle_1 = Poodle.new
p poodle_1.eats? == true

# Encapsulation: the packing of data and functions into a single component.

# Duck Typing

# The Law of Demeter (ej.) Usar métodos de los objetos que llegaron como argumentos del mismo método. Usar métodos de los objetos que se definieron como variables de la clase. Usar métodos de los objetos que se definieron como variables locales dentro del método.


# Overriding Methods (and using super): Any child class can override a method of it's parent class, or any class which creates an object of another class, can override a method by creating a new one with the same name and different actions. Super is used to imply the same action as the parent class or to alter the action. To use super a method must be created with the same name and the action is super or super with additional actions.

# Modules

# Scope: is the reach of variables and methods. Scope can be local or global. Variables and methods created in the global scope can be accessed in the global scope but not within the scope of a new class.

# Private vs Public Methods
# Instance vs Class methods and variables
# Polymorphism
# Separation of Concerns





