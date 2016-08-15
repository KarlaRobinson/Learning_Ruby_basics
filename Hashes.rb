 #Definiendo un Hash
 catalogo_tienda = Hash.new
 catalogo_tienda[:camisa] = 5
 catalogo_tienda = catalogo_tienda.merge({:playera => 3, :short => 7, :pantalon => 2})
p catalogo_tienda

#Precio de la Camisa
p catalogo_tienda[:camisa]

#Modificando un Hash
catalogo_tienda["calcetines"] = 3
p catalogo_tienda

# Hashes
p new_hash = {}
canasta_de_frutas = {:banana => 3, :manzana => 4, :pera => 1}
canasta_de_frutas[:naranja] = 5

p fruta_seleccionada = canasta_de_frutas[:naranja]