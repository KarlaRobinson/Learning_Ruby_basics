#Removiendo vocales
def vowels(words)
  words.map {|word| word.tr('a,e,i,o,u', '')}
end

p vowels(["banana", "carrot", "pineapple", "strawberry"]) == ["bnn", "crrt", "pnppl", "strwbrry"]

#Suma de numeros
def get_sum(*args)
  (args.min..args.max).reduce(:+)
end

p get_sum(1, 0) == 1
p get_sum(1, 2) == 3
p get_sum(0, 1) == 1
p get_sum(1, 1) == 1
p get_sum(-1, 0) == -1
p get_sum(-1, 2) == 2

#Palabras y caracteres
def char_word_counter(str)
  "This sentence has #{str.split.length} words & #{str.delete(" ").length} characters"
end

p char_word_counter("This is a sentence") == "This sentence has 4 words & 15 characters"
p char_word_counter("This easy") == "This sentence has 2 words & 8 characters"
p char_word_counter("This is a very complex line of code to test our program") == "This sentence has 12 words & 44 characters"
p char_word_counter("And when she needs a shelter from reality she takes a dip in my daydreams") == "This sentence has 15 words & 59 characters"

#Buscando en hashes
def food_group(str)
  food_groups = { "grano" => ['Arroz','Trigo', 'Avena', 'Cebada', 'Harina'], "vegetal" => ['Zanahoria', 'Maíz', 'Elote', 'Calabaza', 'Papa'], "fruta" => ['Manzana', 'Mango', 'Fresa', 'Durazno', 'Piña'], "carne" => ['Res', 'Pollo', 'Salmón', 'Pescado', 'Cerdo'], "lácteo" => ['Leche', 'Yogur', 'Queso', 'Crema']
    }

    category = "comida no encontrada"
    food_groups.each_key {|key| category = key if food_groups[key].include? (str)}
    
    category
end

    # Driver code
    p food_group('Crema') == "lácteo"
    p food_group('Res') == "carne"
    p food_group('Piña') == "fruta"
    p food_group('Caña') == "comida no encontrada"

#Dado
class Die

  def initialize(number_of_sides)
    if number_of_sides < 2
      puts "Please choose a number larger than 1."
    else
      @number_of_sides = number_of_sides
    end
  end

  def number_of_sides
    @number_of_sides
  end

  def number_of_sides= (new_number)
    initialize(new_number) 
    #no se si es buena practica llamar al initialize, lo incluyo para no repetir codigo
  end

  def roll
    rand(1..@number_of_sides)
  end
end

die1 = Die.new(5)
die2 = Die.new(1)
#=>"Please choose a number larger than 1."
die3 = Die.new(8)
p die1.number_of_sides == 5
p die1.number_of_sides = 3
#=> 3
die1.number_of_sides = 0
#=>"Please choose a number larger than 1."
p die1.roll
#=> number between 1 and 3
p die3.roll
#=> number between 1 and 8

#Driving
class MyCar
  @@km = 0

  def initialize(yr, color, model)
    @yr = yr
    @color = color
    @model = model
  end

  def current_speed
    "You are now going #{@@km} kph."
  end

  def speed_up(km)
    @@km += km
    "You push the gas and accelerate #{km} kph."
  end

  def brake(km)
    @@km -= km
    "You push the brake and decelerate #{km} kph."
  end

  def shut_down
    "Let's shut down to 0!"
  end
end

carro_prueba = MyCar.new(2010, "Blue", "XYZ")

# Driver code
p carro_prueba.speed_up(20) == "You push the gas and accelerate 20 kph."
p carro_prueba.current_speed == "You are now going 20 kph."
p carro_prueba.speed_up(20) == "You push the gas and accelerate 20 kph."
p carro_prueba.current_speed == "You are now going 40 kph."
p carro_prueba.brake(20) == "You push the brake and decelerate 20 kph."
p carro_prueba.current_speed == "You are now going 20 kph."
p carro_prueba.brake(20) == "You push the brake and decelerate 20 kph."
p carro_prueba.current_speed == "You are now going 0 kph."
p carro_prueba.shut_down == "Let's shut down to 0!"
p carro_prueba.current_speed == "You are now going 0 kph."

# Playlist
class Playlist
attr_reader :name


  def initialize(name, songs)
    @name = name
    @songs = songs
    @current_song = 0
  end
  
  def number_of_songs
    @songs.length
  end

  def add_song= (new_song)
    @songs << new_song
  end

  def next_song
    if @current_song == @songs.length - 1
      @current_song = 0 
    else
      @current_song += 1
    end
    @songs[@current_song]
  end
end

playlist1 = Playlist.new("Rock", ["song", "song2", "song3"])
playlist2 = Playlist.new("Pop", ["s", "s2"])

#Test
p playlist1.number_of_songs == 3
p playlist2.number_of_songs == 2
playlist1.add_song = "song4"
p playlist1
p playlist1.next_song == "song2"
p playlist1.next_song == "song3"
p playlist1.next_song == "song4"
p playlist1.next_song == "song"
p playlist1.next_song == "song2"
p playlist1.name == "Rock"
p playlist2.next_song == "s2"
p playlist2.next_song == "s"



























