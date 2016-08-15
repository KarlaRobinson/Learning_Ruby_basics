


def replace_vowels(array)
  new_array = []
  array.each do |palabra|
     new_array << palabra.downcase.gsub(/[aeiou]/, 'x')
  end
  new_array
end

p replace_vowels(["banana", "apple"]) == ["bxnxnx", "xpplx"]


def replace_vowels(*args)
  new_array = []
  args.each do |palabra|
     new_array << palabra.downcase.gsub(/[aeiou]/, 'x')
  end
  new_array
end

p replace_vowels("banana", "apple")
p replace_vowels("banana", "apple") == ["bxnxnx", "xpplx"]