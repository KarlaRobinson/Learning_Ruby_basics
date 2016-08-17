#Pseudocodigo

#DEFINE anagram? which recieves word and word2
#SORT word and word2 alphabetically
#IF sorted word == sorted word2
#RETURN true, ELSE RETURN false
#END


def canonical(word)
  word.split("").sort.join
end

p canonical("AMOR") == "AMOR"
p canonical("ROMA") == "AMOR"
p canonical("MORE") == "EMOR"

def are_anagrams?(word1, word2)
  canonical(word1) == canonical(word2)
end

p are_anagrams?("AMOR", "ROMA")
p are_anagrams?("AMOR", "MORE") == false

#PSEUDOCODIGO
#DEFINE anagrams_for which recieves a string word and an array of words
#SET new_arr to empty array
#LINEAR SEARCH EACH for each element of array
#IF are_anagrams?(word, element)
#PUSH element to new_arr
#ELSE nil
#ENDIF
#RETURN new_arr
#END METHOD

def anagrams_for(word, array)
  array.find_all {|element| are_anagrams?(word, element)}
end

p anagrams_for("AMOR", ["ROME", "ROMA", "MORA"]) == ["ROMA", "MORA"]








