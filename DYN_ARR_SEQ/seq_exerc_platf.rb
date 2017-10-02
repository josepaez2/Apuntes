# ______________________________________
# ______________________________________
# ______________________________________
# ______________________________________


# Ojo n es un input así que puede haber
# n seq es decir
# s0,s1,s2,s3,....sN-1
# entonces s es un array con un
# index de N-1 Y TODO CAMBIARÍA JEJE

arr = gets.strip.split(' ').map(&:to_i)
n = arr[0]
arr_size = arr[1]

s = []
(n-1).times do |x|
s[x] = []
end

seqList = Array.new(3)
for arr_i in (0..arr_size-1)
    arr_t = gets.strip
    seqList[arr_i] = arr_t.split(' ').map(&:to_i)
end

lastAnswer = 0


seqList.each do |line|
	num = line[0]
		x = line[1]
		y = line[2]
		index_ =  (x^lastAnswer) % n
	if num == 1
	# 1. Query 1 x y
		# 	1. Find the sequence, seq, at index(blah)
		# 	2. Append integer y to sequence seq
		s[index_] ||= []
		s[index_].push(y)

	end
	if num == 2
		# 2. Query 2 x y
		# 	1. Find the sequence, seq, at index(blah)
		# 	2. Find the value of element y % size in 
		# 		 seq(where size is the size of seq) and 
		# 		 assign it to lastAnswer.
		# 	3. Print the new value of lastAnswer on a new line
		# Busque a la posición de array Y (quien es 0 luego 1) en la secuencia
		# de index (quien es 1 luego ?) y métale ese valor a last answer
		lastAnswer = s[index_][y % s[index_].size]
			# p "lastAnswer"
			p lastAnswer
	end
end

# puts "------"
# puts "s0"
# p s[0]
# puts "s1"
# p s[1]
# puts "lastAnswer"
# p lastAnswer
# puts "------"
# p s










