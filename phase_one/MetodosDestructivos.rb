
# Driver code
a = ["a", "b", "r", "t", "y", "c"]

# No destructivo
a.sort
p a == ["a", "b", "r", "t", "y", "c"]

# Destructivo

a.sort! 
p a != ["a", "b", "r", "t", "y", "c"]