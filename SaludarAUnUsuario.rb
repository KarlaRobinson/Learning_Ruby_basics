def say_hi(name)
  return "Welcome back" if name == "Karla"
  "Hi, #{name}"
end

p say_hi('Karla') == "Welcome back"
p say_hi('Juan') == "Hi, Juan"