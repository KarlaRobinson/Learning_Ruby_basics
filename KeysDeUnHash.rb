fruit = {:name=>"pineapple", :weight=>"1 kg", :taste=>"good"} 

def hash_keys(hash)
  keys = []
  hash.each_key {|key| keys << key}
  keys
end

#Test
p hash_keys(fruit)
p hash_keys(fruit) == [:name, :weight, :taste]