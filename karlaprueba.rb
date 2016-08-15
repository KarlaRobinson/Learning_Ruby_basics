=begin
irb
title = "Title"
description = "Description"
Number_of_likes = 5000
Post_ID = 1

street = "Sonora"
Number = "123"
state = "Mexico"
city = "Ciudad de Mexico"
Zip = "55454"

##Operaciones Artimeticas
Num1 = 5.to_f
Num2 = 8.to_f

Exponential = Num1**Num2
Sum = Num1+Num2
Difference = Num1-Num2
Product = Num1*Num2
Quotient = Num1/Num2
Modulus = Num1%Num2

Modulus.class #true
Quotient.class == Float #true

##Operadores relacionales
igual_que = 50 == 50
igual_que = #true

menor_que = 23 < 30
menor_que = #true

mayor_que = 54 > 40
mayor_que = #true

menor_o_igual_que = 45 <= 45
menor_o_igual_que = #true

mayor_o_igual_que = 56 >= 45
mayor_o_igual_que = #true

diferente_que = 34 != 34
diferente_que = #false

##Operadores logicos
valor_1 = (1 < 7 || false) && (true || true)
valor_1 = #true

valor_2 = !false && (!false || 50 != 5**10)
valor_2 = #true

valor_3 = false || !(true || true)
valor_3 = #false



first_name = "Roberto"
last_name = "Monroe"
gender = "M"

puts "\"Welcome #{first_name}, your last_name is `#{last_name}´ 
and your gender is #{gender}\""

irb
Entero = 3
Float1 = 3.23
Float2 = 1.23

#Boolean
x = 40!=40
y = 30>29
z = 10==10

#string
name = "Karla"

#hash
cosas = {mesa:1, silla:2}



multiplicacion = 6 * 5
division = multiplicacion / 5
operacion = division - 3
cadena = "Hola" * operacion
cadena == "HolaHolaHolaHola"


puts "Escribe un nombre:"
name = "Rodrigo"
Letters = name.length 
message = "Welcome #{name}, your name has #{Letters} letters"
p message == "Welcome Rodrigo, your name has 7 letters"
#=>true.



title = String.new
description = String.new
Number_of_likes = Numeric.new

title = "The beginning"




 def sum_words(word, word2)
  puts word + " " + word2
  end
  sum_words("Hi","there")


def suma(a, b)
  p c = a + b
end




def suma(a, b)
  return "#{a} es mayor que #{b}" if a > b

  "#{a} no es mayor que #{b}"
  
end


#test
p suma(10, 5) == "10 es mayor que 5"
p suma(4, 23) == "4 no es mayor que 23"
=end


def caesar_cipher(original_text, rotate_number)
  original_alphabet = "abcdefghijklmnopqrstuvwxyz"
  cipher_text = ""
  original_text.split("").each do |letter|
    if "?.,! ".include?(letter)
      cipher_text << letter
    else
      cipher_alphabet = original_alphabet[(original_alphabet.index(letter.downcase) + rotate_number) % original_alphabet.size]
      if letter == letter.upcase
        cipher_text << cipher_alphabet.upcase
      else
        cipher_text << cipher_alphabet
      end
    end
  end
  cipher_text
end

#test

#Aquí debe ir la prueba 1
p caesar_cipher("Hello", 3)

p caesar_cipher("H", 3)== "K"
p caesar_cipher("e", 4)== "i"


#Aquí debe ir la prueba 2



