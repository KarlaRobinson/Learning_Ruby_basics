def anagrams(array)
  new_array = []
  for word in array
  anagram = []
  array.each {|compare| anagram << compare if compare.chars.sort.join == word.chars.sort.join}
  new_array << anagram
  end
  new_array.uniq
end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live','fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide','flow', 'neon']

#test
p anagrams(words) == [["demo", "dome", "mode"], ["none", "neon"], ["tied", "diet", "edit", "tide"], ["evil", "live", "veil", "vile"], ["fowl", "wolf", "flow"]]


