x = [1,1,2,2,3,4,5,6]
y = [1,3,5,6]
a = x - y
p a #=> [2, 2, 4] Difference
b = x & y
p b #=> [1, 3, 5, 6] Union (en común)
c = x | y
p c #=> [1, 2, 3, 4, 5, 6] Intersection

# Voltearlo

# p arr = [1, 4, 3, 2]
# p arr.reverse.join(" ")
# arr2 = []
# arr.each do |x|
#   arr2.unshift(x)
# end
# p arr2
