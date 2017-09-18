# require 'time'


# def random_subdomain
# 	return ("a".."z").to_a.shuffle[0..7].join
# end

# puts random_subdomain

# def string_shuffle(s)
#    s.split('').shuffle.join
# end
# puts string_shuffle("anitalavalatina")

# puts "---------------------------------"
# p "aaa"
# puts "aaa"

# puts "---------------------------------"

# p "aaa"
# puts "aaa".inspect

# p hash = { :item => "Bread", :quantity => 1 }
# p hash.invert

# person1 = {first: "pedro", lastname: "perez"}
# person2 ={first: "juan", lastname: "rodriguez"}
# person3 = {first: "pablo", lastname: "gomez"}

# params = {father: person1, mother: person2, child: person3 }

# p params[:father][:first] 

# puts "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa".size

# a = "a"
# p a.class 
# a = { :item => "Bread"}
# p a.class
# a = []
# p a.class

# # Crean
# p String.new("a")
# p Range.new(1, 5)
# p Range.new(1, 5).to_a
# p Array.new(4,"a")
# # Crean instancia vacía con defaults
# h = Hash.new { |hash, key| hash[key] = "Go Fish: #{key}" }
# p h
# p h["c"]

# class Word < String
#   def palindrome?
#     self == reverse
#   end
# end
# s = Word.new("racecar")
# p s.palindrome? 
# p s.length

# class String 
#   def shuffle
#     self.split("").shuffle.join
#     # self.split.shuffle.join
#   end
# end
# puts "pedrito".shuffle

# str = "hello James!"
# p str.include?("aa")
# ______________________

# #!/bin/ruby

# n = gets.strip.to_i
# arr = gets.strip
# arr = arr.split(' ').map(&:to_i)

# #count negatives, positives and zeros
# zeros = 0
# positive = 0
# negative = 0
# arr.each do |number|
# 	if number == 0
# 	    zeros+=1
# 	elsif number > 0
# 	    positive+=1
# 	else
# 	    negative+=1
# 	end
# end
# # %
# puts n
# p arr
# p positive
# p negative
# p zeros
# pos = (positive.to_f)/n
# neg = (negative.to_f)/n
# zer = (zeros.to_f)/n

# puts "%.4f" % pos
# puts "%.4f" % neg
# puts "%.4f" % zer
# ______________________

# arr = (1..5).to_a
# arr2 = (1..5).to_a
# memo = 0
# memo2 = 0
# # p arr.shuffle!
# arr.sort!
# arr.pop
# # p arr
# arr.each do |x|
# 	memo += x
# end
# # puts "min is #{memo}"
# arr2.sort!
# arr2.shift
# # p arr2
# arr2.each do |x|
# 	memo2 += x
# end
# # puts "max is #{memo2}"
# puts "#{memo} #{memo2}"

# ______________________
#!/bin/ruby

# def timeConversion(s)
#     # Complete this function
#   	# am_or_pm = (s[8]+ s[9])
#    #  if ((am_or_pm == "PM") && (s[0].to_i < 1) && (s[1].to_i < 8)) 
#    #    sum_1 = (am_or_pm == "PM") ? 1 : 0
#    #    sum_2 = (am_or_pm == "PM") ? 2 : 0
#    #    s[0] = ((s[0].to_i + sum_1)).to_s
#    #    s[1] = ((s[1].to_i + sum_2)).to_s
#    #    s[0..7]
#    #  elsif (am_or_pm == "PM")  && ((s[0].to_i == 0) && ( s[1].to_i) == 8)
#    #    s[0] = "2"
#    #    s[1] = "0"
#    #    s[0..7]
#    #  elsif (am_or_pm == "PM")  && ((s[0].to_i == 0) && ( s[1].to_i) == 9)
#    #    s[0] = "2"
#    #    s[1] = "1"
#    #    s[0..7]
#    #  elsif (am_or_pm == "PM") && ((s[0].to_i == 1) && ( s[1].to_i) == 0)
#    #    s[0] = "2"
# 			# s[1] = "2"
#    #    s[0..7]
#    #  elsif (am_or_pm == "PM") && ((s[0].to_i == 1) && ( s[1].to_i) == 1)
#    #    s[0] = "2"
# 			# s[1] = "3"
#    #    s[0..7]
#    #  elsif (am_or_pm == "PM") && ((s[0].to_i == 1) && ( s[1].to_i) == 2)
#    #    s[0] = "0"
# 			# s[1] = "0"
#    #    s[0..7]
#    #  end
#    t = Time.parse(s)
#   	t.strftime("%H:%M:%S")
# end

# # s = gets.strip
# s = "07:05:45PM"
# result = timeConversion(s)
# puts result;
# s = "09:05:45PM"
# result = timeConversion(s)
# puts result;
# s = "11:05:45PM"
# result = timeConversion(s)
# puts result;
# s = "12:05:45PM"
# result = timeConversion(s)
# puts result;



# class Person
#   attr_accessor :name
  
#   def name=(name)

#     # if name == nil || name.size == 0
#     if name.nil? || name.empty?
#     	# puts "aaaaa"
#       raise ArgumentError.new('Pilas')
#     end
#       @name = name
#   end

#   def initialize(name)  
#     self.name = name 
#   end  
# end
# Person.new("Pedro") # no lanza excepción
# Person.new(nil) # lanza ArgumentError ok
# Person.new("") # lanza ArgumentError ok

# p = Person.new("Juan")
# p.name = "Pedro" # no lanza excepción
# p.name = nil # lanza ArgumentError
# p.name = "" # lanza ArgumentError

# def phrase(ar)
# 	arr = ar.clone
#   if arr.size == 1
#   	arr.shift
#   elsif !arr.empty?
#   	last = " y " + arr.pop
#   	arr.join(", ") + last
#   else
#     ""
#   end
# end

# p phrase(["uno", "dos", "tres", "cuatro"])
# p phrase(['uno', 'dos', 'tres']) # => "uno, dos y tres"
# p phrase(['uno', 'dos']) # => "uno y dos"
# p phrase(['uno']) # => "uno"
# p phrase([]) # => ""


# def secret_code(str)
# 	alphabet = {"nine"=>9, "eight"=>8, "seven"=>7, "six"=>6, "five"=>5, "four"=>4, "three"=>3, "two"=>2, "one"=>1}
# 	sum = []
# 		str.split.each do |element|
# 			if alphabet.include?(element)
# 				sum << alphabet[element]
# 			end
# 		end
# 		sum.inject(:+).nil? ? 0 : sum.inject(:+)
# end


# p secret_code("one on one") #=> 2
# p secret_code("five monkeys in three farms") #=> 8
# p secret_code("") #=> 0
# p secret_code("fivethreeone") #=> 0

# class String
#   def palindrome?
#   	self.delete(' ') == self.delete(' ').reverse
#   end
# end

# p "anita lava la tina".palindrome? # => true
# p "hora de irse".palindrome? # => false

# str ="Jose_Paez"
# str = "DÃ©veloppement"

# def transcode(str)
#   return str.encode("ISO-8859-1").force_encoding("UTF-8")
# end
# transcode(str)


# def serial_average(str)
# 	end_part_number =  ((str[4,5].to_f + str[10,5].to_f)/2).round(2)
# 	end_part = (end_part_number > 10 ? end_part_number.to_s : "0" + end_part_number.to_s)
#   str[4,11] = end_part.size == 5 ? end_part : end_part + "0"
#   return str
# end

# serial_average('002-05.10-10.89') #=>"002-08.00"
# serial_average('002-03.38-04.59') #=>"002-03.99"
# serial_average('002-03.31-04.59') #=>"002-03.95"

# def count_multibyte_char(str)
# 	memo = 0
# 	str.each_char do |x|
# 		x.bytes.size > 1 ? memo+=1 : ""
# 	end
# 	memo
# end
# count_multibyte_char('¥1000')

# def process_text(arr)
#   arr.map {|str| str.strip}.join(" ")
# end
# process_text(["Hi, \n", " Are you having fun?    "]) #"Hi, Are you having fun?"

# def mask_article(str,arr)
#   arr.each do|pattern|
#   	str.gsub!(pattern, strike(pattern))
# 	end
# 	str
# end
# def strike(string)
#   "<strike>#{string}</strike>"
# end 
# mask_article("Hello World! This is crap!", ["World","Hello"]) # "Hello World! This is <strike>crap</strike>!"
# mask_article("Hello World! This is crap!", ["crap"])
# mask_article("Hello World! This is crap!", ["wwffewf"])

# def take(arr, num=1)
#   arr[num..arr.size-1]
# end
# take([1,2,3], 1) # [2,3]
# take([1,2,3], 2) # [3]
# take([1,2,3]) # [2,3]

# def full_name(first, *rest)
#   p first + " " + rest.join(" ")
# end
  
# full_name('Pradeep', 'Suresh', 'Satyanarayana')

# MY WAY
# def convert_temp(temperature, input_scale = 'kelvin', output_scale = 'celsius', **options)
# 	temperature
# !!options[:output_scale] ? output_scale = options[:output_scale] : ""
# 	input_scale = options[:input_scale]

# 	if (input_scale == 'celsius' && output_scale == 'kelvin' )
# 		return temperature = temperature + 273.15
# 	elsif (input_scale == 'celsius' && output_scale == 'fahrenheit')
# 		return temperature = (1.8*temperature) + 32
# 	end

# 	if (input_scale == 'fahrenheit' && output_scale == 'kelvin' )
# 		return temperature = ((temperature - 32)*5/9)+273.15
# 	elsif (input_scale == 'fahrenheit' && output_scale == 'celsius')
# 		return temperature = (temperature - 32)/1.8
# 	end
# 	if (input_scale == 'kelvin' && output_scale == 'celsius' )
# 		return temperature = temperature - 273.15
# 	elsif (input_scale == 'kelvin' && output_scale == 'fahrenheit')
# 		return temperature = (1.8 *(temperature - 273)) + 32
# 	end
# 	temperature
# end
# convert_temp(0, input_scale: 'celsius', output_scale: 'kelvin') # 273.15
# convert_temp(0, input_scale: 'celsius', output_scale: 'fahrenheit') # 32.0
# convert_temp(82, input_scale: 'fahrenheit', output_scale: 'kelvin') # 300.9
# convert_temp(295, input_scale: 'kelvin', output_scale: 'fahrenheit') # 71.2
# convert_temp(293.15, input_scale: 'kelvin') # 71.2

# Profes WAY

# $hash = {   k_to_c: Proc.new { |k| k - 273.15 } ,
#             f_to_c: Proc.new { |f| (f - 32) * 5.0/9.0},
#             c_to_f: Proc.new { |c| c * 5.0/9.0 + 32},
#             c_to_k: Proc.new { |c| c + 273.15},
#             k_to_f: Proc.new { |k| k * 5.0/9.0 + 32 + 273.15},
#             f_to_k: Proc.new { |f| (f - 32) * 5.0/9.0 + 273.15}
# }

# def convert_temp (temp, input_scale: 'kelvin', output_scale: 'celsius')
#     return temp if input_scale == output_scale
#     sym = "#{input_scale[0]}_to_#{output_scale[0]}".to_sym
#     proc = $hash[sym]
#     if proc
#       proc.call(temp)
#     else
#       temp
#     end
# end


# n = gets.to_i

# def factorial
#     yield
# end

# factorial do 
# 	puts (1..n).inject(:*) || 1
# end


# def foo(a, b, my_proc)
#     my_proc.call(a, b)
# end

# add = proc {|x, y| x + y}

# puts foo(15, 10, add)
# # -----------------
# def square_of_sum (my_array, proc_square, proc_sum)
#     sum = proc_sum.call(my_array)
#     proc_square.call(sum)
# end
# proc_square_number = proc {|x| x**2 }
# proc_sum_array = proc {|y| y.inject(:+)} 
# # my_array = gets.strip.gsub('[', '').gsub(']', '').split(",").map(&:to_i)
# my_array = gets.split().map(&:to_i)

# puts square_of_sum(my_array, proc_square_number, proc_sum_array)


# multiply_function = -> (number) do
#    -> (another_number) do
#        number * another_number
#    end
# end

# doubler = multiply_function.(2)
# tripler = multiply_function.(3)

# puts doubler.(4)
# puts tripler.(4)

# power_function = -> (x, z) {
#     (x) ** z
# }

# base = gets.to_i
# raise_to_power = power_function.curry.(base)#_________________________

# power = gets.to_i
# puts raise_to_power.(power)

# class Object
#   private

# 	def prime?(number) 
#     puts number
#     if number>1
#         @bool = 0
#         (2...number).each do |n|
#             number%n == 0 ? @bool+=1 : ""
#         end
#     else
#         @bool = 1
#     end
#    	@bool == 0 ? true : false
# 	end
# end
# puts prime?(5)
# puts prime?(8)






























