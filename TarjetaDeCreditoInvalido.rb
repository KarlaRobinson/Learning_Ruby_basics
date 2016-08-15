def error_message(name, credit_card_type, credit_card_number)
  "#{name}, The #{credit_card_type.upcase} Credit Card Number 'xxx-#{credit_card_number[-3..-1]}' You Provided is Invalid."
end




p error_message('Rodrigo', 'American Express', '205782460166975') == "Rodrigo, The AMERICAN EXPRESS Credit Card Number 'xxx-975' You Provided is Invalid."
p error_message('Carla', 'Visa', '3912888888881881') == "Carla, The VISA Credit Card Number 'xxx-881' You Provided is Invalid."
