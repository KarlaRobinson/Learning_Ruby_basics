fruit = {:name=>"pineapple", :weight=>"1 kg", :taste=>"good"} 

def hash_values(hash)
  values = []
  hash.each_value {|val| values << val}
  values
end

#Test
p hash_values(fruit) == ["pineapple", "1 kg", "good"]

