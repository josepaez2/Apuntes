
# 1. B.U.D.(Bottlenecks, Unnecesary work, Duplicated work)
# 2. SPACE/TIME TRADEOFFS
# 3. D.I.Y.

# --------------------------------------------------------
#    B.U.D.(Bottlenecks, Unnecesary work, Duplicated work)
# --------------------------------------------------------

array_a = [1, 5, 12, 3, -15, 52]
array_b = [3, 1, 6, 5, 57, 13, 17]
final_array = []

# # BRUTE FORCE
# array_a.each do |a|
# 	array_b.each do |b|
# 		a == b ? final_array<< a : ""
# 	end
# end

# p final_array

# # ELEGANT BRUTE FORCE
# array_a.each do |a|
# 		array_b.to_set (a) ? final_array<< a : ""
# end

# p final_array

# With HASH 

# el `hash` funciona con solo un `loop` por que
# lo que haria seria iterar sobre uno y luego usar
# el elemento como la llave del otro si da un
# resultado el elemento es comun si da nil no y
# solo necesita un loop

array_a = [1, 5, 12, 3, -15, 52]
array_b = [3, 1, 6, 5, 57, 13, 17]
final_array = []
hash = {}

array_b.each_with_index { |key, index| hash[key] = array_a[index] }

hash.each do |key, value|
		hash[value] ? final_array << hash[value] : ""
	end
p final_array

# UNNECESARY WORK

# A veces es mejor despejar una variable para poder optimizar
# una vez el problema complejo es menos complejo
# Find a,b,c and d
a**3+b**3 = c**3+d**3,  0 < a,b,c,d < 1000
=> d = (a**3+b**3-c**3)^(1/**3)

# DUPLICATED WORK

En vez de iterar para c y d por separado dado que 

c**3 + d**3 = d**3 + c**3 entonces para cada iteración que
tenga los mismo números pero en diferente orden el
resultado será el mismo por lo que podría almacenarse
y simplemente irse a buscar

# -------------------------------------------
#           	SPACE/TIME TRADEOFFS
# -------------------------------------------
Always have HASHTABLES at the top of your mind.

Uses more space but saves a bunch of time.

Q) Find all solutions to a**3+b**3 = c**3+d**3
A) Use a HASHTABLE to map from
x**3+y**3 => (x,y),(x2, y2),(x3, y3),#...
# -------------------------------------------
#          				 	D.I.Y.
# -------------------------------------------

Find all permutations of s within b

# BRUTE FORCE

Create list of all permutations of s
Find all within b

=> at least O(s*b)

# DIY (Using a large and generic example)
# Your brain will automaticly come up with an
# optimized computing method that will flow into a
# much better algorithm than brute force
# example
with s = "xacxzaa"
		 b = "fxaazxacaaxzoecazxaxaz"
		 
		 only 6 comparisons

s = "xacxzaa"
b = "xaazxac"

s = "xacxzaa"
b = "aazxaca"

s = "xacxzaa"
b = "azxacaa"

s = "xacxzaa"
b = "zxacaax"

s = "xacxzaa"
b = "xacaaxz"

s = "xacxzaa"
b = "cazxaxaz"





