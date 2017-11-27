# --------------------
# INICIAL
# ---------------------

# Array Manipulation

arr = gets.strip.split(' ').map(&:to_i)
n = arr[0]
m = arr[1]
list = Array.new(3)
for arr_i in (0..m-1)
    arr_t = gets.strip
    list[arr_i] = arr_t.split(' ').map(&:to_i)
end
list
arr = Array.new(n, 0)

list.each do |line|
		a = line[0] - 1
		b = line[1] - 1
		k = line[2]

		for arr_i in (a..(b))
		    arr[arr_i] += k
		end
		arr
end
p arr.max


# --------------------
# INTERMEDIO
# ---------------------


# Array Manipulation

n, m = gets.strip.split(' ')
n = n.to_i
m = m.to_i
arr = Array.new(n, 0)
for ind in (0..m-1)
    a, b, k = gets.strip.split(' ')
    a = a.to_i - 1
    b = b.to_i - 1
    k = k.to_i
		for arr_i in (a..(b))
		    arr[arr_i] += k
		end
end
p arr.max


# --------------------
# PRO O(n)
# ---------------------


# Array Manipulation

N, M = gets.chomp.split(' ').map(&:to_i)

# create array of zeros of length N + 1
arr = Array.new(N + 1, 0)

M.times do
    # cycle through and get the inputs
    start, finish, value = gets.chomp.split(' ').map(&:to_i)

    # increment value at start of sequence
    arr[start - 1] += value

    # decrement value at first position after sequence
    arr[finish] -= value
end
    p arr

tmp = 0
max = 0

arr.each do |value|
    # step through summing array
    tmp += value

    # capture the max value of tmp
    max = tmp if max < tmp
end

puts max
# --------------------
# COMPACT
# ---------------------

N, M = gets.chomp.split(' ').map(&:to_i)
arr = Array.new(N + 1, 0)
M.times do
    a, b, k = gets.chomp.split(' ').map(&:to_i)
    arr[a - 1] += k
    arr[b] -= k
end
memo, max = 0, 0
arr.each do |value|
    memo += value
    max = memo if max < memo
end
puts max













