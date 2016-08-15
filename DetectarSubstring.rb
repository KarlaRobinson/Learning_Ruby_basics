def shipping(address)
  return "Order received" if address.include? "Mexico"
  "We only ship orders to Mexico"
end


p shipping('Insurgentes Sur 8932, Alvaro Obregon, Mexico') == "Order received"
p shipping('Geary Blvd 3320, San Francisco, Estados Unidos') == "We only ship orders to Mexico"