insertionsort.rb

# INSERTION SORT - PART 1

# def  insertionSort( ar) 
# 	size = ar.size
# 	value = ar[-1]
# 	size.times do |x|
# 		if (x+1 == size) && (ar.min > value)
# 			ar[0] = value
# 			print ar.join(' ') + "\n"
#       exit
# 		elsif ar[size-1-1-x] > value
# 			ar[size-1-x] = ar[size-1-1-x]
# 			print ar.join(' ') + "\n"
# 		elsif ar[size-1-1-x] < value
# 			ar[size-1-x] = value
# 			print ar.join(' ') + "\n"
#       exit
# 		end
# 	end

# end

# count = gets.to_i
# ar = gets.strip.split.map {|i| i.to_i}

# insertionSort( ar )

# INSERTION SORT - PART 2

# def  insertionSort( ar) 
# 	# size = ar.size
# 	# size.times do |x|
# 	# if ar[0] <	
# 	# end 

# 	size = ar.size
# 	value = ar[1]
# 	puts "--------------------------"
# 	puts "ordenando de menor a mayor"
# 	puts "--------------------------"
# 	(size-1).times do |x|
# 		while () do 
# 		# if (x+1 == size) && (ar.max < value)
# 		# 	ar[-1] = value
# 			# print ar.join(' ') + "\n"
#       # exit
#       puts "is #{ar[x+1]} smaller than #{value}?"
# 		if ar[x+1] < value
# 	puts "posición de #{ar[x+1]}"
# 			p position1 = ar.index(ar[x+1])
# 	puts "posición de #{value}"
# 			p positionv = ar.index(value)
# 			memo = ar[x+1]
# 			ar[x+1] = value
# 			ar[ar.index(value)] = memo
# 			# print ar.join(' ') + "\n"
# 		# elsif ar[size-1-1-x] > value
# 		# 	ar[size-1-x] = value
# 			# print ar.join(' ') + "\n"
#       # exit
#       puts "ok, change"
# 		end
# 			print ar.join(' ') + "\n"
# 			puts "---------------"
# 	end

# end

# cnt = gets.to_i
# ar = gets.strip.split(" ").map! {|i| i.to_i}
# insertionSort(ar)
# S = [1,4,54,65,676,878,899,999,6,4,44,55,622,111,222,5445,7,8,9,55,444,666,333]

# p S
# S.shuffle!
# p S

# sal = "Hola"
# desp = "Chao"

# sal,desp = desp,sal
# p sal
# p desp


# def partition(ar) 
#   lo = 0
#   hi = ar.size - 1
#   i = lo
#   j = hi
#   pivot = ar[lo]
#   # minors = []
#   # greaters = []
#   while (true)
#     #Loop to increment i
#     while (ar[i]<pivot)
#     	# minors << ar[i]
#     	i+=1
#       break if (i == hi)
#     end
#     #Loop to increment j
#     while (ar[j]>pivot)
#     	# greaters << ar[j]
#     	j-=1
#         break if (j == lo)
#     end
#     # break the loop if pointers cross  
#       break if (i >= j)
#     #Swap arr[i] and arr[j]
#     ar[i], ar[j] = ar[j], ar[i]
#     # p ar
#   	end
#   # ---------usels-----------------
#   #                                Swap arr[lo] with arr[j]
#   #                                ar[lo], ar[j] = ar[j], ar[lo]
#   #                                p ar
#   # ---------usels-----------------
#   # p ar
# 	print ar.join(' ') + "\n"
#   # p minors
#   # p greaters

#   return j
# end
# ar = [12,3,1,2,4,70,89,3,3]
# # p ar
# # puts " - - Start - - "
# partition(ar)
# # puts " - - Finish - - "



# - - - - - - FINAL  ALGORITHM - - - - - - 

# Insertion sort algorithm
# Efficient for small number of elements

# Input 
# [1, 5, 3, 4, 6, 3]

# Expected output
# [1, 3, 3, 4, 5, 6]

def insertion_sort(array)
    final = [array[0]]
    array.delete_at(0)
    # main code
    for i in array
        final_index = 0
        while final_index < final.length
            if i <= final[final_index]
                final.insert(final_index,i)
                break
            elsif final_index == final.length-1
                final.insert(final_index+1,i)
                break
            end
            final_index+=1
        end
    end
    # output
    final
end
cnt = gets.to_i
ar = gets.strip.split(" ").map! {|i| i.to_i}
p insertion_sort(ar)
