# Insertion sort algorithm
# Efficient for small number of elements

# Input 
# [1, 5, 3, 4, 6, 3]

# Expected output
# [1, 3, 3, 4, 5, 6]

# def insertion_sort(array)
# 		conta_iterac = 0
#     final = [array[0]]
#     array.delete_at(0)
#     # main code
#     for i in array
#         final_index = 0
#         while final_index < final.length
#         	p final
#             if i <= final[final_index]
#                 final.insert(final_index,i)
#                 conta_iterac+=1
#                 break
#             elsif final_index == final.length-1
#                 final.insert(final_index+1,i)
#                 conta_iterac+=1
#                 break
#             end
#             final_index+=1
#         end
#     end
#     # output
# 		puts "final_index"
# 		p final_index
# 		puts "conta_iterac"
# 		p conta_iterac
#     puts "Output"
#     p final
# end
# cnt = gets.to_i
# ar = gets.strip.split(" ").map! {|i| i.to_i}
# insertion_sort(ar)




# Enter your code here. Read input from STDIN. Print output to STDOUT
def  insertionsort(num)
	counting = 0
	for j in 1..(num.length - 1)
			# p num
	    key = num[j]
	    i = j - 1
	    while i >= 0 and num[i] > key
	    	# p num
	    	counting+=1
	        num[i+1] = num[i]
	        i = i - 1
	    end
	    num[i+1] = key
	end 
	#puts "Final ..."
	#p num
	#puts "Count"
	# p counting
	puts ""
	puts counting
  # , + "\n"
end
query_num = gets.to_i
query_num.times do 
  cnt = gets.to_i
  num = gets.strip.split(" ").map! {|i| i.to_i}
  insertionsort(num)
end


