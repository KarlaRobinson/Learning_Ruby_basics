def prism_type(height, length, width)
  return "cubo" if height == length  && length == width
  return "cuboide" if height != length && length != width && height != width
  "prisma rectangular"
end

#Prueba
p prism_type(5, 5, 5) == "cubo"
p prism_type(5, 5, 4) == "prisma rectangular"
p prism_type(5, 4, 3) == "cuboide"
p prism_type(10, 8, 2) == "cuboide"