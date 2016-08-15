def vowels(string)
  vow = ["a","o","i","e","u"]
  keep = []
  string.downcase.each_char do |x|
    keep << x if vow.include? x
  end
  keep.uniq.count
end


 p vowels("hello") == 2
 p vowels("Magic") == 2
 p vowels("Apologize to ME") == 4


def vowels(string)
  string.downcase.count("aeiou")
end


 p vowels("hello") == 2
 p vowels("Magic") == 2
 p vowels("Apologize") == 5

