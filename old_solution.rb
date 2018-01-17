# Enter your code here. Read input from STDIN. Print output to STDOUT
require "matrix"

num_query = gets.chomp.to_i
num_query.times do
	size = gets.chomp.to_i
	arr = gets.chomp.split(" ").map{|x|x.to_i};
	arr_sort = arr.sort
	# puts ""
	a = Matrix[arr].row(0)
	b = Matrix[arr_sort].row(0)
	c = a - b

	puts c.inject {|sum, n| sum + n.abs } 
	# p diff = Matrix[arr] - Matrix[arr_sort]
	# p diff[0] 
	# print c.row(0).inject(:+), "\n"
end