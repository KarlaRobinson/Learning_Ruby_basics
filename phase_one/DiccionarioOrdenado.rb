def dictionary_sort
  store_words = []
  puts "Escribe una palabra:"
  user_word = gets.chomp
  while user_word != ""
    store_words << user_word if user_word != "0" && user_word.to_i == 0 && user_word.strip != "" 
    puts "Escribe otra palabra(o presiona 'enter' para finalizar):"
    user_word = gets.chomp
  end
  puts "Felicidades! Tu diccionario tiene #{store_words.length} palabras: "
  puts store_words.sort_by {|word| word.downcase}
end

 dictionary_sort

# Escribe una palabra:   
# > Gato
# > Escribe otra palabra(o presiona "enter" para finalizar):   
# > Lechuga
# > Escribe otra palabra(o presiona "enter" para finalizar):   
# > Rojo
# > Escribe otra palabra(o presiona "enter" para finalizar):   
# > Silla
# > Escribe otra palabra(o presiona "enter" para finalizar):   
# > Armadillo
# >
# > Felicidades! Tu diccionario tiene 5 palabras: 
# > Armadillo
# > Gato
# > Lechuga
# > Rojo
# > Silla












