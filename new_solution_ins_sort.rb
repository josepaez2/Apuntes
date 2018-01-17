def  insertionsort(num)
	counting = 0
	for j in 1..(num.length - 1)
	    key = num[j]
	    i = j - 1
	    while i >= 0 and num[i] > key
	    	counting+=1
	        num[i+1] = num[i]
	        i = i - 1
	    end
	    num[i+1] = key
	end 
	puts "Final ..."
	p num
	puts "Count"
	p counting
end

query_num = gets.to_i
query_num.times do 
  cnt = gets.to_i
  num = gets.strip.split(" ").map! {|i| i.to_i}
  insertionsort(num)
end