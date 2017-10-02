# ---------------------
#         INICIAL
# ----------------------
# Queries possible on my seqList
# 1. Query 1 x y
# 	1. Find the sequence, seq, at index(blah)
# 	2. Append integer y to sequence seq
# 2. Query 2 x y
# 	1. Find the sequence, seq, at index(blah)
# 	2. Find the value of element y% size in 
# 		 seq(where size is the size of seq) and 
# 		 assign it to lastAnswer.
# 	3. Print the new value of lastAnswer on a new line
=begin
2 5
1 0 5 
1 1 7
1 0 3
2 1 0
2 1 1
=end


# seqList = Array.new(3)
# for arr_i in (0..6-1)
#     arr_t = gets.strip
#     seqList[arr_i] = arr_t.split(' ').map(&:to_i)
# end

p seqList = [[2, 5], [1, 0, 5], [1, 1, 7], [1, 0, 3], [2, 1, 0], [2, 1, 1]]
lastAnswer = 0
seqList.shift
p seqList
n = seqList[0][0] #=> N = 2 es decir habra 2 sequencias
s0 = []
s1 = []

# if p oper q => p + q (mod 2)

seqList.each do |line|
	num = line[0]
	if num == 1
	# 1. Query 1 x y
	# 	1. Find the sequence, seq, at index(blah)
		puts "-x-"
		 p x = line[1]
		puts "-y-"
		 p y = line[2]
		puts "-i1-"
		p index =  (x + lastAnswer) % 2  # A
		puts "----"
		# 	2. Append integer y to sequence seq
		if index == 0
			s0 << y
		elsif index == 1
			s1 << y
		end

	end
	if num == 2
		# 2. Query 2 x y
		# 	1. Find the sequence, seq, at index(blah)
		puts "-x-"
		x = line[1]
		puts "-y-"
		 y = line[2]
		puts "-i2-"
		p index =  (x + lastAnswer) % 2  # A
		puts "----"
		# 	2. Find the value of element y % size in 
		# 		 seq(where size is the size of seq) and 
		# 		 assign it to lastAnswer.
		# 	3. Print the new value of lastAnswer on a new line
		# Busque a la posición de array Y (quien es 0 luego 1) en la secuencia
		# de index (quien es 1 luego ?) y métale ese valor a last answer
		if index == 0
			lastAnswer = s0[y]
			p lastAnswer
		elsif index == 1
			lastAnswer = s1[y]
			p lastAnswer
		end

	end
	puts "------"
	puts "s0"
	p s0
	puts "s1"
	p s1
end


# ______________________________________
# ______________________________________
# ---------------------
#         FINAL
# ----------------------
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
p s
p seqList
# p n
# p arr_size

lastAnswer = 0


seqList.each do |line|
	num = line[0]
		x = line[1]
		y = line[2]
		index_ =  (x^lastAnswer) % n
	if num == 1
	# 1. Query 1 x y
	# 	1. Find the sequence, seq, at index(blah)
		# puts "-x-"
		# x
		# puts "-y-"
		# y
		# puts "-i1-"
		# index
		# puts "----"
		# 	2. Append integer y to sequence seq

		# if index_ == 0
		# 	s0 << y
		# elsif index_ == 1
		# 	s1 << y
		# end
		s[index_] ||= []
		s[index_].push(y)

	end
	if num == 2
		# 2. Query 2 x y
		# 	1. Find the sequence, seq, at index(blah)
		# puts "-x-"
		# x
		# puts "-y-"
		#  y
		# puts "-i2-"
		# index
		# puts "----"
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

puts "------"
puts "s0"
p s[0]
puts "s1"
p s[1]
puts "lastAnswer"
p lastAnswer
puts "------"
p s



















