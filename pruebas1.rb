# INSERTION SORT - PART 2

def  insertionSort( ar) 
	# size = ar.size
	# size.times do |x|
	# if ar[0] <	
	# end 

	size = ar.size
	value = ar[0]
	puts "--------------------------"
	puts "ordenando de menor a mayor"
	puts "--------------------------"
	# (size-1).times do |x|
	x = 0 
	y = 0
	while (y < size-1) do 
		while (x < size-1) do 
			# if ar != ar.sort
				puts "-> x is #{x} <- -> y is #{y} <-"
			  puts "is #{ar[x]} smaller than #{value}?"
				if ar[x] < value
					puts "posición de #{ar[x]}"
					p position1 = ar.index(ar[x])
					puts "posición de #{value}"
					p positionv = ar.index(value)
					memo = ar[x]
					ar[x] = value
					ar[ar.index(value)] = memo
					value = memo
					x = 0
			    puts "ok, change"
			    # x = 0
				end
					print ar.join(' ') + "\n"
					puts "---------------"
		x+=1
		end
		# end
	y+=1
	x = 0
	value = ar[y]
	puts "fewfwqgr"
	end
end

cnt = gets.to_i
ar = gets.strip.split(" ").map! {|i| i.to_i}
insertionSort(ar)







