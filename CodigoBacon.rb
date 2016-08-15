def baconian_cipher(code)
  code.gsub("A","0").gsub("B","1").scan(/.{5}/).map {|string| string.to_i(2)}.map {|num| num > 8 ? num += 1 : num}.map {|num| num > 19 ? num += 1 : num}.map {|num| (num + 97).chr}.join
  
end

# Pruebas

p baconian_cipher("BAABAAABAAAABAABAAABABBBAAABAABAAAAABBABAAAAAABABAAAAAABAAABAAABAABAAAABBAAAAABAABBAB") == "teesperoalascinco"
p baconian_cipher("ABABAAAAAAAAABAABABAAAAAABAABBAABAAAABAABAAABAAABBABBABBAAABBAABABAAAAAABAABAAAB") == "laclaveesdostres"
