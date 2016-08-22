# local_var = "this is my local var"

# def return_my_local_var
# 	local_var
# end

# puts return_my_local_var
# returns an error becuase local_var is local to the global scope but it is not a global variable and so when a new method is created it opens a new scope which does not have access this variable
$global_var = "This is a global variable"
CONSTANT = 3.1416 

def global_var
	$global_var
end

class DummyClass
@@class_variable = "This is a class variable"

	def initialize
	local_var = "this is my local var"
	@instance_var = local_var
	end

	def return_my_local_var
		@instance_var
	end

	def instance_var=(value)
    @instance_var = value
  	end

  	def class_variable
  		@@class_variable
  	end

  	def class_variable=class_variable
  		@@class_variable = class_variable
  	end

  	def global_var
  		$global_var
  	end

  	def global_var=global_Var
  		$global_var = global_Var
  	end

  	def constant
  		CONSTANT
  	end
end

example = DummyClass.new
p example.return_my_local_var

#instance variables exist within in the scope of the class and can be accessed by any method within the class

dummy_1 = DummyClass.new
dummy_2 = DummyClass.new

p dummy_1.class_variable
p dummy_2.class_variable
dummy_1.class_variable = "New value for the class variable"

p dummy_1.class_variable
p dummy_2.class_variable

p dummy_1.global_var
p dummy_2.global_var = "new global var"
p dummy_1.global_var

p dummy_1.constant

p global_var