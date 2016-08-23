

def pig_latin_word(word)
  if word[0].downcase =~ /[aeiou]/
    word << "way" 
  else
    n = /[aeiou]/.match word.downcase
    n.to_s + n.post_match + n.pre_match + "ay"
  end
end

p pig_latin_word *ARGV

#################################
CodeaCamp03s-Mac-mini:phase_one codea_mac_03$ ruby PigLatin.rb pig
#=> "igpay"



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

p pig_latin_sentence *ARGV

################################
CodeaCamp03s-Mac-mini:phase_one codea_mac_03$ ruby PigLatin.rb "The pig is pink"
#=> "ethayigpayiswayinkpay"