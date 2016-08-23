# Script: Single word converter to Pig Latin
# GET a word from user input
# IF the word starts with a vowel, add "way" to the end
# ELSE replace the word with its pig latin equivalent
#   GET all of the consonants before the first vowel in the word
#   SET the consonants at the end of the word and add "ay"
# ENDIF
# RETURN the pig-latin word

def pig_latin_word(word)
	if word[0].downcase =~ /[aeiou]/
		word << "way" 
	else
		n = /[aeiou]/.match word.downcase
		n.to_s + n.post_match + n.pre_match + "ay"
	end
end

p pig_latin_word("pig") == "igpay"
p pig_latin_word("banana") == "ananabay"
p pig_latin_word("egg") == "eggway"
p pig_latin_word("I") == "Iway"

# Script: Single word converter to Pig Latin
# GET a sentence from user input
# SET new_sentence = to empty string
# sentence.split.EACH DO |word|
# IF the word starts with a vowel, add "way" to the end
# ELSE replace the word with its pig latin equivalent
#   GET all of the consonants before the first vowel in the word
#   SET the consonants at the end of the word and add "ay"
# ENDIF
# END.EACH
# RETURN the pig-latin word


def pig_latin_sentence(sentence)
	new_sentence = ""
	sentence.split.each do |word|
		if word[0].downcase =~ /[aeiou]/
			word << "way" 
		else
			n = /[aeiou]/.match word.downcase
			word = n.to_s + n.post_match + n.pre_match + "ay"
		end
		new_sentence << word
	end
	new_sentence
end

p pig_latin_sentence("The pig is pink") == "ethayigpayiswayinkpay"
p pig_latin_sentence("A banana is yummy") == "Awayananabayiswayummyyay"
p pig_latin_sentence("I like to eat eggs") == "Iwayikelayotayeatwayeggsway"
p pig_latin_sentence("I am a girl") == "Iwayamwayawayirlgay"
