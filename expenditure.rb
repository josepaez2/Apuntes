def activityNotifications(expenditure, d, n)
	# puts "- - - - - -"
	d_array = []
	non_d_array = []
	sum = 0
    # Complete this function
    d.times do
    	d_array << expenditure.shift
  	end
  	# p d_array
    (n-d).times do
    	non_d_array << expenditure.pop
  	end
  	# p non_d_array

  sorted_d_array = d_array.sort
  # p sorted_d_array
  if d % 2 == 0
  	n1 = d/2 - 1
  	n2 = d/2 
  	median = (sorted_d_array.fetch(n1) + sorted_d_array.fetch(n2)).to_f/2
  else
  	n = d/2
  	median = sorted_d_array.fetch(n) 
  end
  # p median
  # p non_d_array
  non_d_array.each do |exp|
  	if exp >= (2*median)
  		"Alert"
  		sum+=1
  	end
  end
  # puts "----- Final -----"
  puts sum
end

n, d = gets.strip.split(' ')
n = n.to_i
d = d.to_i
expenditure = gets.strip
expenditure = expenditure.split(' ').map(&:to_i)
result = activityNotifications(expenditure, d, n)
# puts result