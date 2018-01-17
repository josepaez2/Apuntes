# INPUT [10, 5, 2, 20]

# OUTPUT { 10: [5, 2], 5: [], 2: [], 20: [10,5,2] }
output = { :"10" => "a"}
hash = { :item => "Bread", :quantity => 1 }
hashi = { item: "Bread", quantity: 1 }
input = [10, 5, 2, 20]
in_hash = {}

input.each do |num|
	in_hash[num] = []
# puts num
end	

puts in_hash
puts hashi
puts output