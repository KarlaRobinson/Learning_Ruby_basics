def join_hash(hash1, hash2, hash3)
  new_hash = Hash.new
  [hash1, hash2, hash3].each {|elem| elem.each {|key,val| new_hash[key] = val}}
  new_hash
end

fruit = {name: "pineapple"}
weight = {weight: "1 kg"}
taste = {taste: "good"}

#test
p join_hash(fruit, weight, taste) == {:name=>"pineapple", :weight=>"1 kg", :taste=>"good"} 

