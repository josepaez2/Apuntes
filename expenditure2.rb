def activityNotifications(expenditure, d, n)
p expenditure
end

n, d = gets.strip.split(' ')
n = n.to_i
d = d.to_i
expenditure = gets.strip
expenditure = expenditure.split(' ')
# .map(&:to_i)
result = activityNotifications(expenditure, d, n)
# puts result