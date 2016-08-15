fruit = {:name=>"pineapple"} 

def keys_and_values(hash)
  new_string = ""
  hash.each {|key,val| new_string << "La llave del Hash es '#{key}' y su valor es #{val}."} 
  new_string
end

#Test
p keys_and_values(fruit) == "La llave del Hash es 'name' y su valor es pineapple."