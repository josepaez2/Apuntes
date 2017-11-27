
# INSERTION SORT - PART 2

def  insertionSort( ar) 
	puts "--------------------------"
	puts "ordenando de menor a mayor"
	puts "--------------------------"
	i = 1
	while i < ar.size
		x = ar[i]
	  j = i - 1
		puts "-> i is #{i} <- -> j is #{j} <-"
	  puts "is #{ar[j]} smaller than #{x}?"
    while j >= 0 && ar[j] > x
      ar[j+1] = ar[j]
      j = j - 1
      # p ar
			p ar
			puts "ok, change"
			#print ar.join(' ') + "\n" #este es
    end
    ar[j+1] = x
    i = i + 1
    p ar 
    puts "---------------"
		# print ar.join(' ') + "\n"
	end	
	# puts "final"
	# p ar
	# print ar.join(' ') + "\n"
end
cnt = gets.to_i
ar = gets.strip.split(" ").map! {|i| i.to_i}
insertionSort(ar)







