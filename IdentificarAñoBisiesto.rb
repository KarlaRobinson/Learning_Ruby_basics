def leap_year?(año)
  return false if año % 4 != 0
  return true if año % 100 != 0 
  año % 400 == 0 ? true : false
end

# Pruebas

p leap_year?(1900) == false
p leap_year?(1988) == true
p leap_year?(1989) == false
p leap_year?(1992) == true
p leap_year?(2000) == true
p leap_year?(2001) == false
p leap_year?(1600) == true  
p leap_year?(1704) == true

# Si el año es divisible por 4, vaya al paso 2. Si no es así, vaya al paso 5.
# Si el año es divisible por 100, vaya al paso 3. Si no es así, dirijase al paso 4.
# Si el año es divisible por 400, vaya al paso 4. Si no es así, vaya al paso 5.
# El año es un año bisiesto (tiene 366 días).
# El año no es un año bisiesto (tiene 365 días).