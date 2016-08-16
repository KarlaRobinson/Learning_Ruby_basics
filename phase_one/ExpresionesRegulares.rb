#Driver Code
bank_code = "Visa 1234-123-123" #true
bank_code2 = "Visa 4444-333-333" #true
bank_code3 = "Visa 12-123-123" #false
bank_code4 = "Visa 1234123123" #false

# #Regresa true si encuentra un numero de cuenta.
def is_an_account_number?(string)
  /\d{4}-\d{3}-\d{3}/ === string ? true :false
end

p is_an_account_number?(bank_code) == true
p is_an_account_number?(bank_code2) == true
p is_an_account_number?(bank_code3) == false
p is_an_account_number?(bank_code4) == false


# #Regresa un numero de cuenta si existe dentro del string y nil en el caso contrario.
def account_number_is(string)
  (/\d{4}-\d{3}-\d{3}/.match string).to_s if /\d{4}-\d{3}-\d{3}/ === string 
end

p account_number_is(bank_code) == "1234-123-123"
p account_number_is(bank_code2) == "4444-333-333"
p account_number_is(bank_code3) == nil
p account_number_is(bank_code4) == nil


# # #Regresa un array con los números de cuenta que existen dentro del string y un array vacío en el caso contrario.
def account_digits_in_arr(string)
  /\d{4}-\d{3}-\d{3}/ === string ? (/\d{4}-\d{3}-\d{3}/.match string).to_s.gsub(/-/, "").split(",").map { |n| n.to_i } : []
end

p account_digits_in_arr(bank_code) == [1234123123]
p account_digits_in_arr(bank_code2) == [4444333333]
p account_digits_in_arr(bank_code3) == []
p account_digits_in_arr(bank_code4) == []

# Regresa un string donde si existen números de cuenta estos tendran remplazados por "X" los primeros siete numeros. ej. "XXXX-XXX-234"
def hide_first_7_of_account(string)
  "XXXX-XXX-" << (/\d{4}-\d{3}-\d{3}/.match string).to_s[-3..-1] if /\d{4}-\d{3}-\d{3}/ === string 
end

p hide_first_7_of_account(bank_code) == "XXXX-XXX-123"
p hide_first_7_of_account(bank_code2) == "XXXX-XXX-333"
p hide_first_7_of_account(bank_code3) == nil
p hide_first_7_of_account(bank_code4) == nil

#Driver code
numbers = Random.new.rand(1_000_000_000...10_000_000_000).to_s
numbers2 = "4.134.456.556"
numbers3 = "3_323_345"


#Regresa un string formateado donde cualquier número de diez dígitos seguido o si tiene puntos en vez de guiones lo regresa a su formato original donde usa guiones para dividir los diez dígitos. Si encuentra un numero de menos dígitos no debería remplazarlo.
def format_numbers(numbers)
  numbers.gsub(/\D/, "").reverse.gsub(/(.{3})/, '\1_').reverse if numbers.gsub(/\D/, "").length == 10
end

p /\d{1}_\d{3}_\d{3}_\d{3}/ === format_numbers(numbers)
p format_numbers(numbers2) == "4_134_456_556"
p format_numbers(numbers3) == nil







