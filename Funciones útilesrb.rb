Descargar imágenes al lugar adecuado
curl -o app/assets/images/kitten.jpg -OL cdn.learnenough.com/kitten.jpg


    AlWAYS USE TABS FOR EVERYTHING!!!

# Trabes, veces entrar al archivo escribir algo, 
# luego borrarlo y dar guardar puede quitar el trabé. 
# Recordar bajar el servidor primero.

# ASSIGNMENT
# Operations
x    =   x   +   1      ->     x     +=   1
x    =   x   *   3      ->     x     *=   3
x    =   x   -   8      ->     x     -=   8
x    =   x   /   2      ->     x     /=   2
@foo = @foo || "bar"    ->     @foo ||= "bar"

@foo ||= "bar" if var is nil aasign it value => "bar"

# Compact Multiple Assignment
@user.password = @user.password_confirmation = "a" * 5
# Swap variables
	sal = "Hola"
	desp = "Chao"

	sal,desp = desp,sal
	p sal # Chao
	p desp # Hola

# Swap elements in an array
  #Swap arr[i] and arr[j]
  ar[i], ar[j] = ar[j], ar[i]

# INSTANCIAS
# ver bonita una instancia
puts user.attributes.to_yaml?
y user.attributes.

# ASSETS
app/assets #assets specific to the present application
lib/assets #assets for libraries written by your dev team
vendor/assets #assets from third-party vendors

# TESTS
ver sample app carpeta tests y testing.rb

# VARIOS
touch #crea el archivo en la ubicacion deseada
  touch app/views/static_pages/about.html.erb
mv #renames the file  
  mv app/views/layouts/application.html.erb layout_file 
rm #removes the file  
  rm ./example_user.rb

# SHORTCUTS
Si se toca la linea y se hace copy paste copia la línea!
cd ~ #root
cd - #toggle location in console 
cmd+p       # Buscar archivo
cmd+t #ir a una pestaña específica
cmd+p+enter #toggle entre archivos
cmd+shif+p  # Command Palette
cmd+d #selecciona los snippets parecidos, selecionados modificarlos
cmd+shift+v # Pegar sin estilos
cmd+k+u  #a mayúsculas
cmd+k+l  #a minúsculas
ctrl+shift+k #borra toda la línea
ctrl+shift+w #adds an html tag around selected item
ctrl+cmd+up #mover el bloque de texto hacia arriba
ctrl+cmd+down #mover el bloque de texto hacia abajo
ctrl+alt+up o +down#modo desplazamiento
html llena los tags con tab desde antes de cerrar el primer tag
si lo seleccino y pongo "" o brackets me lo envuelve!

# ERB SHORTCUTS
er
pe
ff
lt

# RAILS SHORTCUTS
rails g
rails c
rails console --sandbox
rails s
rails d
bundle

rails db:drop
rails db:create # aunque creo que ese comando ya no es necesario
rails db:migrate
rails db:seed
rails db:setup # create, schema:load
rails db:reset # drop + setup
rails db:rollback
rails db:migrate:reset # DROP + MIGRATE
rails server -b $IP -p $PORT


# COMENTAR COMMENT
=begin
  Esto está comentado
=end

Prioridad de Operadores en Ruby
( )         # Parentheses
!           # Not
**          # Exponentiation
% / *       # Modulus, Division, Multiplication
+ -        /# Addition and Subtraction
# By the way different is
!=          # Different     

saber qué me llega
def ask(question, kind="string")
  puts question
  answer = gets.chomp
  answer = answer.to_i if kind == "number"
  return answer
end

# Pausar el código agregando
puts " "  #salto de línea
print " " #(agrega una pausa y espera un enter)

# Invertir
str.reverse invertir el orden del string
arr.reverse invertir el orden del array
hash.invert hash a values y values a hash

# Truthy & Falsy
!(true)  es false
Only nil and false are false
We can see this using !!(read “bang bang”), coercing it to its boolean value:

str.include? “aa” #busca en strings
num1.to_f #vuelve decimal un entero


name = gets.chomp > pide un string
guess = gets.chomp.to_i > pide un string  y vuelve número

puts "Hola #{name}" > imprime strings con variables adentro
new_string = old_string.case.reverse > voltear un string


#-------------------------------------------
#                 STRINGS
#-------------------------------------------

Las mayúsculas son para constantes no para variables!

str = "hello James!"
str.include?("a") #=> true , busca en strings
str.downcase # "hello james!"
str.upcase      #=> "HELLO JAMES!"
str.capitalize  #=> "Hello james!"
str.titleize    #=> "Hello James!"
str.strip #=> Returns a new string with the leading and trailing whitespace removed.
# BACKCSLASHES
Ruby needs to escape the backslash with an additional backslash;
inside double-quoted strings, a literal backslash is represented
with two backslashes
>> 'Newlines (\n) and tabs (\t) both use the backslash character \.'
=> "Newlines (\\n) and tabs (\\t) both use the backslash character \\."

# ASKS
s.empty?
s.nil?
s.include?()

puts "Both strings are empty" if x.empty? && y.empty?
puts "One of the strings is empty" if x.empty? || y.empty?
puts "x is not empty" if !x.empty?

>> string = "foobar"
>> puts "The string '#{string}' is nonempty." unless string.empty?
The string 'foobar' is nonempty.
=> nil

# EJERCICIO EXPRESIONES REGULARES 

def is_plate? (string)
!!(/[A-Z][A-Z][A-Z][0-9][0-9][0-9]/.match(string))
end

  is_plate?('AAA234')
  is_plate?('A4A234')
  is_plate?('A9XB84')

# EJERCICIO EXPRESIONES REGULARES compact profe

def is_plate?(string)
  string =~ /^[A-Z]{3}[0-9]{3}$/
end

  is_plate?('AAA234')
  is_plate?('A4A234')
  is_plate?('A9XB84')

#IMPRIMIR

puts "Imprime sin "", : , sin formato y con salto de línea"
p "Imprime con formato y salto de línea"
print "Imprime sin formato y sin salto de línea"

puts + inspect = p
Imprimir varios elementos en el mismo puts
puts "A imprimir!", "A imprimir!".inspect

# EJERCICIO INPUTS

puts "dime tu nombre"
name = gets.chomp
puts "dime tu edad"
age = gets.chomp.to_i       
puts "#{name} tiene #{age} años"

# PALÍNDROME

class String
  def palindrome?
    self.delete(' ') == self.delete(' ').reverse
  end
end

p "anita lava la tina".palindrome? # => true
p "hora de irse".palindrome? # => false

#-------------------------------------------
#           CONDITIONALS - LOGIC
#-------------------------------------------

# BODYGUARD
rails c 
>> def string_message(str = '')
>>   return "It's an empty string!" if str.empty?
>>   return "The string is nonempty."
>> end

#LOGICA BÁSICA compact (solo devuelve true o false)

def alive?(player_name, points)
  (player_name == "ikk" && points > 30) || (player_name == "gut" && points > 10)
end

# ------   EJERCICIO CON CASE -------------

print "Modify your name. Type 'uppercase' or 'reverse': "
answer = gets.chomp.downcase

case answer 
when "reverse"
  puts "This is your name backwards:"
  puts name.reverse
when "uppercase"
  puts "This is your name in all uppercase letters:"
  puts name.upcase
when "both"
  puts name.reverse.upcase
else
  puts "Ok, maybe later."
end

# ------------ TERNARY OPERATOR ------------

  if boolean?
    do_one_thing
  else
    do_something_else
  end

  instead:

  boolean? ? do_one_thing : do_something_else

  # another example:

  if boolean?
    var = foo
  else
    var = bar
  end

  instead:

  var = boolean? ? foo : bar

  # another example:

  def foo
    do_stuff
    boolean? ? "bar" : "baz"
  end
end
# -------------------------------------------
#                 BLOCKS
# -------------------------------------------

# ----------FACTORIAL, BLOCKS and YIELD -----------

n = gets.to_i

def factorial
    yield
end

factorial do 
  puts (1..n).inject(:*) || 1
end

# ------------- PROCS ---------------------

def foo(a, b, my_proc)
    my_proc.call(a, b)
end

add = proc {|x, y| x + y}

puts foo(15, 10, add)
# -----------------
def square_of_sum (my_array, proc_square, proc_sum)
    sum = proc_sum.call(my_array)
    proc_square.call(sum)
end
proc_square_number = proc {|x| x**2 }
proc_sum_array = proc {|y| y.inject(:+)} 
# my_array = gets.strip.gsub('[', '').gsub(']', '').split(",").map(&:to_i)
my_array = gets.split().map(&:to_i)

puts square_of_sum(my_array, proc_square_number, proc_sum_array)


# ------------- LAMBDAS ---------------------

#Ruby version <= 1.8
    lambda { .... } 

    lambda do
        ....
    end

#Ruby version >= 1.9, "stabby lambda" syntax is added
    -> { .... }

    -> do
        ....
    end
Ruby version  can use both lambda and stabby lambda, ->.

Lambdas can be used as arguments to higher-order functions. They can also be used to construct the result of a higher-order function that needs to return a function.

Example:

(a). Lambda that takes no arguments.

def area (l, b)
   -> { l * b } 
end

x = 10.0; y = 20.0

area_rectangle = area(x, y).call
area_triangle = 0.5 * area(x, y).()

puts area_rectangle     #200.0
puts area_triangle      #100.0
(b). Lambda that takes one or more arguments.

area = ->(a, b) { a * b }

x = 10.0; y = 20.0

area_rectangle = area.(x, y)
area_triangle = 0.5 * area.call(x, y)

puts area_rectangle     #200.0
puts area_triangle      #100.0    
In the above example, we can see that lambdas can be called using both .call() and .().

# ---------- example ----------

# area = ->(a, b) { a * b }
# Write a lambda which takes an integer and square it
square = -> (input_number_1) {input_number_1**2}#_____________________________________ 

# Write a lambda which takes an integer and increment it by 1
plus_one = ->(input_number_2) {input_number_2+1}#_____________________________________ 

# Write a lambda which takes an integer and multiply it by 2
into_2 = -> (input_number_1) {input_number_1*2}#_____________________________________ 

# Write a lambda which takes two integers and adds them
adder  = -> (input_number_1, input_number_2) {input_number_1+input_number_2}#_____________________________________ 
  
# Write a lambda which takes a hash and returns an array of hash values
values_only = -> (input_hash) {input_hash.values}#_____________________________________ 


input_number_1 = gets.to_i
input_number_2 = gets.to_i
input_hash = eval(gets)

a = square.(input_number_1); b = plus_one.(input_number_2);c = into_2.(input_number_1); 
d = adder.(input_number_1, input_number_2);e = values_only.(input_hash)

p a; p b; p c; p d; p e

#-------------------------------------------
#         EJEMPLOS DE LOS 3 BLOQUES
#-------------------------------------------
def block_message_printer
    message = "Welcome to Block Message Printer"
    if block_given?
        yield#_________
    end
  puts "But in this function/method message is :: #{message}"
end

message = "Random Message"
block_message_printer { puts "This message remembers message :: #{message}" }

#####################################################################################

def proc_message_printer(my_proc)
    message = "Welcome to Proc Message Printer"
    my_proc.call(message)#_________________________              #Call my_proc
    puts "But in this function/method message is :: #{message}"
end


my_proc = proc { puts "This message remembers message :: #{message}" }
proc_message_printer(my_proc)
    
######################################################################################    
    
def lambda_message_printer(my_lambda)
    message = "Welcome to Lambda Message Printer"
    my_lambda.()#_________________________              #Call my_lambda
    puts "But in this function/method message is :: #{message}"
end

my_lambda = -> { puts "This message remembers message :: #{message}" }
lambda_message_printer(my_lambda)    
    
######################################################################################    

# This message remembers message :: Random Message
# But in this function/method message is :: Welcome to Block Message Printer
# This message remembers message :: Random Message
# But in this function/method message is :: Welcome to Proc Message Printer
# This message remembers message :: Random Message
# But in this function/method message is :: Welcome to Lambda Message Printer

# ---------- Currys ----------
# Currying is a technique in which a function accepts n
# parameters and turns it into a sequence of n functions,
# each of them take 1 parameter.

power_function = -> (x, z) {
    (x) ** z
}

base = gets.to_i
raise_to_power = power_function.curry.(base)#_________________________

power = gets.to_i
puts raise_to_power.(power)

# ---------- Lazy Evaluation ----------

# Lazy evaluation is an evaluation strategy that delays the assessment of an expression until its value is needed.

# Ruby  introduced a lazy enumeration feature. Lazy evaluation increases performance by avoiding needless calculations, and it has the ability to create potentially infinite data structures.

# Example:

power_array = -> (power, array_size) do 
    1.upto(Float::INFINITY).lazy.map { |x| x**power }.first(array_size) 
end

puts power_array.(2 , 4)    #[1, 4, 9, 16]
puts power_array.(2 , 10)   #[1, 4, 9, 16, 25, 36, 49, 64, 81, 100]
puts power_array.(3, 5)     #[1, 8, 27, 64, 125]
# Example palindromic prime:
# Your task is to print an array of the first 
# palindromic prime numbers. Ex: [2,3,5,7,11,101,131,151,181,191]

require 'prime'
p Prime.each.lazy.select{|x| x.to_s == x.to_s.reverse}.first(gets.to_i)

#-------------------------------------------
#          BLOQUES PARCIALES
#-------------------------------------------

multiply_function = -> (number) do
   -> (another_number) do
       number * another_number
   end
end

doubler = multiply_function.(2)
tripler = multiply_function.(3)

puts doubler.(4)
puts tripler.(4)

#-----------ejemplo con Combinatorias-----

combination = -> (n) do 
  -> (r)  do              
    fact(n)/(fact(r)*fact(n-r))
  end                   
end                     

def fact(x)
  (1..x).inject(:*) || 1
end
n = gets.to_i
r = gets.to_i
nCr = combination.(n)
puts nCr.(r)

#-------------------------------------------
#      		EJERCICIOS DE ARRAYS
#-------------------------------------------
para arreglos de arreglos
a = [[]]
a.flatten me lo deja en un solo arreglo
# EJERCICIO CREACIÓN DE ARRAY

item = “milk”
array = %W(#{item} eggs bread) esto crea un array con comas en los espacios
array = ["milk", "eggs", "bread"] es lo mismo
array = Array.new(3, "Jason")
array = [3, "a"]

### EJERCICIOS DE BASICS ARRAYS

# SPLIT convierte un string en un array separado por los argumentos
# brindados
>>  "foo bar     baz".split     # por defecto tomas espacios
=> ["foo", "bar", "baz"]

# JOIN convierte un array en un string es el opuesto de split
# OTROS MÉTODOS
>> a = [42, 8, 17, 6, 7, "foo", "bar"]
>> a.join                       # Join on nothing.
=> "4281767foobar"
>> a.join(', ')                 # Join on comma-space.
=> "42, 8, 17, 6, 7, foo, bar"

# Return the number of items in an array:

array.length
array.count

# Leer elementos

puts array[0] # da el primer registro
puts array[-1] # da el útlimo registro

# If a second argument is provided to the fetch method and there is no corresponding
 # item in the array, the second argument will be used as a default:
# MATCHING
puts array.fetch(20, "cake")    # => "cake"

puts array.count("eggs")  # => 1

puts array.include?("eggs")  # => true

a = [42, 8, 17]
a.empty?
a.include?(42)
a.sort
a.sort! #DESTRUCTIVOS
a.sort_by
a.reverse
a.shuffle

# RANGES with ARRAYS

> (0..9).to_a            # Use parentheses to call to_a on the range.
=> [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

>> a = %w[foo bar baz quux]         # Use %w to make a string array.
=> ["foo", "bar", "baz", "quux"]
>> a[0..2]
=> ["foo", "bar", "baz"]

> a = (0..9).to_a
=> [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
>> a[2..(a.length-1)]               # Explicitly use the array's length.
=> [2, 3, 4, 5, 6, 7, 8, 9]
>> a[2..-1]                         # Use the index -1 trick.
=> [2, 3, 4, 5, 6, 7, 8, 9]

>> ('a'..'e').to_a
=> ["a", "b", "c", "d", "e"]

>> (1..5).each { |i| puts 2 * i }
2
4
6
8
10
=> 1..5

>> (1..5).map { |i| i**2 }          # The ** notation is for 'power'.
=> [1, 4, 9, 16, 25]

# BLOCKS
>> %w[a b c]                        # Recall that %w makes string arrays.
=> ["a", "b", "c"]
# Normal
    >> %w[A B C].each do |char|
    >> char.downcase 
    >> end
# Compact
    >> %w[A B C].map { |char| char.downcase }
    => ["a", "b", "c"]
# VERY compact
    >> %w[A B C].map(&:downcase)
    => ["a", "b", "c"]

# EJERCICIO MAX Y MIN CON ARRAY

def maximo (*args)
  return args.max
end  
def minimo (*args)
  return args.min
end  
maximo(5, 10, 20, 50, 32)
minimo(5, 10, 20, 50, 32)

# EJERCICIO MULTIPLICACIÓN ARRAY

sum = 0

nums_times_two = []
nums.each do |num|
nums_times_two.push(num*2) #o << shovel
end
puts nums_times_two

# EJERCICIO MULTIPLICACIÓN ARRAY compact

def multiplier(arreglo, num)
  arreglo.map { |i| i * num }
end

# EJERCICIO SUMA ARRAY

nums.each do |num|
sum = num + sum
end
puts sum

# EJERCICIO SUMA ARRAY SIMPLIFICADA

sum = 0
puts nums.reduce(0){|sum,num| sum += num}
array.min 

# EJERCICIO MIN Y MAX ARRAY
array.min
array.max

#EJERCICIO SHORTEST STRING ARRAY
array.empty?
array.sort_by! {|x| x.length}
array.first

[-100,300,600,900,1200,1500]
upper = 1500
lower = 900

# COUNT BETWEEN ARRAYS 

def count_between(arr, lower, upper)
  count = 0
  arr.each do |x|
    if (x >= lower) && (x<= upper)
      count = count + 1
    end
  end
  count
end

# VERSIÓN SIMPLIFICADA DE COUNT BETWEEN ARRAYS OK
def count_between(arr, upper, lower)
  arr.count {|x| (x >= lower) && (x<= upper)}
end
# ORTOGRAFÍA EN ESPAÑOL
def phrase(ar)
  arr = ar.clone
  if arr.size == 1
    arr.shift
  elsif !arr.empty?
    last = " y " + arr.pop
    arr.join(", ") + last
  else
    "-"
  end  
end

p phrase(["uno", "dos", "tres", "cuatro"])
p phrase(['uno', 'dos', 'tres']) # => "uno, dos y tres"
p phrase(['uno', 'dos']) # => "uno y dos"
p phrase(['uno']) # => "uno"
p phrase([]) # => ""

# SECRET CODE UN STRING

def secret_code(str)
  alphabet = {"nine"=>9, "eight"=>8, "seven"=>7, "six"=>6, "five"=>5, "four"=>4, "three"=>3, "two"=>2, "one"=>1}
  sum = []
    str.split.each do |element|
      if alphabet.include?(element)
        sum << alphabet[element]
      end
    end

    sum.inject(:+).nil? ? 0 : sum.inject(:+)
end


p secret_code("one on one") #=> 2
p secret_code("five monkeys in three farms") #=> 8
p secret_code("") #=> 0
p secret_code("fivethreeone") #=> 0

#MORE ABOUT ARRAYS

#### ADICIONAR ITEMS

# Add the string "carrots" to the end of the array:

array << "carrots"

# Add the string "potatoes" to the end of the array:

array.push("potatoes")

# Add the string "celery" to the beginning of the array:

array.unshift("celery") # add to beginning

# Add the strings "ice cream" and "pie" to the end of the array:

array += ["ice cream", "pie"]

# Chaining array pushes

a << "foo" << "bar"        

#### RETIRAR ITEMS

# To access and remove the last item in the array, we can use the pop method:

last_item = array.pop

# To access and remove the first item in the array, we use the shift method:

first_item = array.shift 

# We can use the drop method to take out a number of items from an array. 
# The drop method's argument is the number of items to remove from the front
 # of the array.

ice_cream_carrots = array.drop(2)

# The slice method takes two arguments and removes and returns items from the array. 
# The first argument is the index in the array, second argument is the number of items:

first_three_items = array.slice(0, 3)

#### 2D Array - DS / HOURGLASS

arr = [[1, 1, 1, 0, 0, 0], [0, 1, 0, 0, 0, 0], [1, 1, 1, 0, 0, 0], [0, 0, 2, 4, 4, 0], [0, 0, 0, 2, 0, 0], [0, 0, 1, 2, 4, 0]]
arr_sums = []
(arr.size - 2).times do |y|
  (arr[0].size - 2).times do |x|
    a = arr[y][x]
    b = arr[y][x+1]
    c = arr[y][x+2]
    d = arr[y+1][x+1]
    e = arr[y+2][x]
    f = arr[y+2][x+1]
    g = arr[y+2][x+2]

    print "x = ", x, " y = ", y, "\n\n", a, " ", b, " ", c, "\n", "  ", d, "\n", e, " ", f, " ", g, "\n\n", ""

    # print "x = ", x, " y = ", y, "\n\n"
    # print a, " ", b, " ", c, "\n"
    # print "  ", d, "\n"
    # print e, " ", f, " ", g, "\n\n"
    # puts ""

    arr_sums << a+b+c+d+e+f+g
  end
end
p arr_sums
p arr_sums.size
p arr_sums.max

#-------------------------------------------
#      		EJERCICIOS DE HASHES
#-------------------------------------------
# HASHES METHODS

# EACH
# Note that each for hashes takes two, a key and a value. Thus,
# the each method for a hash iterates through the hash one key-value
# pair at a time.

>> flash = { success: "It worked!", danger: "It failed." }
# => {:success=>"It worked!", :danger=>"It failed."}
>> flash.each do |key, value|
?>   puts "Key #{key.inspect} has value #{value.inspect}"
>> end
# Key :success has value "It worked!"
# Key :danger has value "It failed."

# %s para símbolos
# Used for symbols.It’s not subject to expression substitution or escape sequences.

%s(Hola Mundo)
:"Hola Mundo"

# INVERT
Turns keys into values and values into keys

p hash = { :item => "Bread", :quantity => 1 }
p hash.invert
{:item=>"Bread", :quantity=>1}
{"Bread"=>:item, 1=>:quantity}

# MERGE
p { "a" => 100, "b" => 200 }.merge({ "b" => 300 })
{"a"=>100, "b"=>300}

p { "a" => 100, "b" => 200 }.merge({ "c" => 400 })
{"a"=>100, "b"=>200, "c"=>400}
# HASH INSIDE A HASH

person1 = {first: "pedro", lastname: "perez"}
person2 ={first: "juan", lastname: "rodriguez"}
person3 = {first: "pablo", lastname: "gomez"}

params = {father: person1, mother: person2, child: person3 }

# Access key inside the hash inside the hash
p params[:father][:first] 

# CREACIÓN DE HASHES 

hash = Hash.new
hash = {}
hash = { :item => "Bread", :quantity => 1 }

# Hash keys can also be numbers. If we set the following hash key and value:
# bslash en text editar da un / invertido
hash[:font_size] = 3
# Our hash would look like this:

{ :item => "Bread", :quantity => 1, 1 => "Grocery Store" }

# DEFINING HASH

# Once a hash has been instantiated, it is possible to add new hash keys 
# and values by using the name of the hash, brackets containing the new key,
#  an equals sign, and the new value for said key:

hash[:font_size] = 3

# If you"'"re using symbols as keys, there's a shorthand notation you can use. 
# So if you're defining a hash like this...
hash = { item: "Bread", quantity: 1 }
hash = { :item => "Bread", :quantity => 1 }

# HASH KEYS AND VALUES 

# To find out all of the different keys inside of the hash, we can use the keys method:

hash.keys

# This would return an array of the keys in the hash:

[:item, :quantity, :brand]

# To check whether or not a hash contains a key, we can use the has_key? method,
#  which returns true or false. It is aliased as member? and key?:

hash.has_key?(:brand)      # => true
hash.member?(:quantity)    # => true
hash.key?(:item)           # => true

# The store method will ADD A KEY AND VALUE PAIR TO A HASH

hash.store(:calories, 100)

# Equality, Two hashes are considered equal when they have the same keys and values

# To return an array of the values in the hash, we can use the values method:

hash.values

# Which would return the following:

["Bread", 1, "Treehouse Bread Company"]

hash.has_value?("Bread")

# The values_at method takes several arguments and returns the hash values 
# at the specified keys as an array:

hash.values_at(:quantity, :brand)

#### ADICIONAR KEYS AND VALUES

hash[:font_size] = 3
hash.store(:calories, 100)

# Adicionar un valores tipo default con merge

def defaults(hash)
  { temperature: 10, altitude: 12000, pressure: 500 }.merge(hash)
end

# Adicionar un valores tipo default

def defaults (hash)
  if !(hash.key?(:temperature)) 
    hash[:temperature] = 10
  end
  if !(hash.key?(:altitude)) 
    hash[:altitude] = 12000
  end
  if !(hash.key?(:pressure))
    hash[:pressure] = 500
  end
  return hash
end  
puts defaults({ temperature: 20, altitude: 15000 }) 
puts defaults({})


hash.default = 0

hash = Hash.new                            #=> {}
hash.default                               #=> nil
hash.default(2)                            #=> nil

hash = Hash.new("cat")                     #=> {}
hash.default                               #=> "cat"
hash.default(2)                            #=> "cat"

hash = Hash.new {|h,k| h[k] = k.to_i*10}   #=> {}
hash.default                               #=> nil
hash.default(2)                            #=> 20

>> h = Hash.new
=> {}
>> h[:foo]            # Try to access the value for the nonexistent key :foo.
=> nil
>> h = Hash.new(0)    # Arrange for nonexistent keys to return 0 instead of nil.
=> {}
>> h[:foo]
=> 0

#### RETIRAR KEYS AND VALUES

# To access and remove the last item in the hash, we can use the pop method:

last_item = hash.pop

# To access and remove the first item in the hash, we use the shift method:

first_item = hash.shift 

#CREO JEJEJE

# We can use the drop method to take out a number of items from an hash. 
# The drop method's argument is the number of items to remove from the front
 # of the hash.

ice_cream_carrots = hash.drop(2)

# The slice method takes two arguments and removes and returns items from the hash. 
# The first argument is the index in the hash, second argument is the number of items:

first_three_items = hash.slice(0, 3)

#### OTROS KEYS AND VALUES

# Using the merge method, create a hash named final_item that contains the grocery_item 
# hash merged with the calories hash.

grocery_item = { "item" => "Bread", "quantity" => 1, "brand" => "Treehouse Bread Company" }
calories = { "calories" => 100 }

final_item = grocery_item.merge(calories)

# HASH Y ARRAYS --- METERLE UN HASH A UN ARRAY DENTRO DE UN HASH

grocery_list = { 'title' => 'Grocery List', 'items' => [] }
grocery_item = { 'title' => 'Bread', 'quantity' => 1 }
grocery_list['items'].push(grocery_item)

#-------------------------------------------
#         EJERCICIOS DE CLASSES
#-------------------------------------------

a = "a"
p a.class 
a = { :item => "Bread"}
p a.class
a = []
p a.class
a = (1..5)
p a.class

String
Hash
Array
Range

# Crean
p String.new("a")
p Range.new(1, 5)
p Range.new(1, 5).to_a
p Array.new(4,"a")
# Crean instancia vacía con defaults
h = Hash.new { |hash, key| hash[key] = "Go Fish: #{key}" }
p h
p h["c"]



# CLASS INHERITANCE

# When learning about classes, it’s useful to find out the class hierarchy using the superclass method:

>> s = String.new("foobar")
=> "foobar"
>> s.class                        # Find the class of s.
=> String
>> s.class.superclass             # Find the superclass of String.
=> Object
>> s.class.superclass.superclass  # Ruby 1.9 uses a new BasicObject base class
=> BasicObject
>> s.class.superclass.superclass.superclass
=> nil

class Word < String
  def palindrome?
    self == self.reverse
  end
end
s = Word.new("level")
p s.palindrome? 
p s.length

class Word < String
  def palindrome?
    self == reverse
  end
end
s = Word.new("level")
p s.palindrome? 
p s.length

# OBJECT

aaaaa = Perro.new

# Ask the object if it responds to a given method:
aaaaa.methods me da los métodos asociados
aaaaa.respond_to?("upcase") me dice si conoce a ese método
aaaaa.delete_all

class User
  attr_accessor :first_name,:last_name, :email

  def initialize(attributes = {})
    @first_name  = attributes[:first_name]
    @last_name  = attributes[:last_name]
    @email = attributes[:email]
  end
  def full_name
    @first_name+" "+@last_name
  end
  def formatted_email
    "#{full_name} <#{@email}>"
  end
end

example = User.new
example.first_name = "Example" 
example.last_name = "User" 
example.email = "user@example.com" 
puts example.formatted_email

#-------------------------------------------
#         MODULE INCLUDE
#-------------------------------------------
ARCHIVO_1

class Article
  attr_reader :body
  include TextAnalyzer

  def initialize(body)
    @body = body
  end
end

class Comment
  attr_reader :body
  include TextAnalyzer

  def initialize(body)
    @body = body
  end
end

ARCHIVO_2

module TextAnalyzer
  def num_words
    @body ? @body.split.size : 0
  end
  
  def num_chars
    @body ? @body.chars.size : 0
  end
end

O CON 

require_relative "ARCHIVO_2.rb"

O CON

extend
#  is used when a use case adds steps to another 
# First class use case.

# For example, imagine "Withdraw Cash" is a use case
# of an ATM machine. "Access Fee" would extend Withdraw
# Cash and describe the conditional "extension point"
# that is instantiated when the ATM user doesn't bank
# at the ATM's owning institution. Notice that the basic
# "Withdraw Cash" use case stands on its own, without 
# the extension.
Include
#  is used to extract use case fragments that 
# are duplicated in multiple use cases. The included
# use case cannot stand alone and the original use 
# case is not complete without the included one. This
# should be used sparingly and only in cases where the
# duplication is significant and exists by design 
# (rather than by coincidence).

# For example, the flow of events that occurs at the
# beginning of every ATM use case (when the user puts
# in their ATM card, enters their PIN, and is shown
# the main menu) would be a good candidate for an
# include.
#-------------------------------------------
#         FILE MANIPULATION
#-------------------------------------------

# CREATING FILES
  # MY VERSION
  def write(file_name, content)
    File.open(file_name, "w+") { |file| file.write(content) }
  end  

  # PROFE VERSION
  def write(file, content)
    File.write(file, content)
  end 

  # PROFE VERSION compact
  def write(file_name, content)
    File.open('path/to/file', 'w') { |file| file.write("content") }
  end  

write("bbbb.txt", "Hola mundo") 

# READING FILES
  # MY VERSION
  def read(file_name)
    if File.file?(file_name)
      data = File.read(file_name)
      return data
    else
      nil
    end
  end
  # PROFE VERSION
  def read(file)
    File.read(file) if File.file?(file)
    # IO.read(file) también funciona
  end

p read2("existing_file.txt") 
p read2("non_existing_file.txt") 

# LOADING AND SAVING TASKS

# load task:
  # input: file
    # 1,Hacer tareas,true
    # 2,Lavar ropa,false
  # Output:
    # [
    #   { id: 1, name: "Hacer tareas", done: true },
    #   { id: 2, name: "Lavar ropa", done: false }
    # ]

def load_task(file)
  tareas = []
  if File.exists?(file)
    file = File.open(file, 'r')
    File.open(file, 'r') do |file|
      file.each do |line|
        line = line.split(',').map(&:strip)
        tareas << {id: line[0].to_i, name: line[1], done: line[2] == 'true'}
      end
    end
    tareas
  else
    tareas
  end
end

def save_task(file, tareas)
  File.open(file, 'w+') do |file|
    tareas.each do |tarea|
      line = []
      tarea.each do |key, value|
        line << value
      end
      file.puts line.join('')
    end
  end
end

# compact version
def save_task(file, tareas)
  File.open(file, 'w+') do |file|
    tareas.each do |tarea|
      file.puts "#{tarea[:id]},#{tarea[:name]},#{tarea[:done]}"
    end
  end
end

p load_task('tareas.txt')
save_task('tareas.txt', [
    { id: 1, name: "Hacer tareas", done: true },
    { id: 2, name: "Lavar ropa", done: false }
])

#-------------------------------------------
#         VALIDATION
#-------------------------------------------

validates ver archivo validation.rb de esta misma carpeta

# PERO POR SI ACASO

user = User.new(name: "Michael Hartl", email: "mhartl@example.com")
user = User.create(name:"aaa")
user.valid?
user.save
user.errors
user.errors.count
user.errors.messages
user.errors.full_messages

User.find(1)
User.find_by(name:"Michael Hartl")
User.first
User.all
User.find_by_name

# CREATE in DB
user = User.create(name: "The Dude", email: "dude@abides.org", password: "aaaaaa", password_confirmation: "aaaaaa")
user2 = User.create(name: "Michael Hartl", email: "example@railstutorial.org", password: "aaaaaa", password_confirmation: "aaaaaa")
user3 = User.create(name: "Jose", email: "josepaez_2@hotmail.com", password: "aaaaaa", password_confirmation: "aaaaaa")
# UPDATE in DB

# Opcion 1
user.email = "mhartl@example.net"
user.save

>> user.email
=> "mhartl@example.net"
>> user.email = "foo@bar.com"
=> "foo@bar.com"
>> user.reload.email
=> "mhartl@example.net"

# Opción 2
user.update_attributes(name: "Example User",email: "example@railstutorial.org",password: "foobar",password_confirmation: "foobar")
=> true # Lo crea en case de datos con todos los juguetes
>> user.name
=> "Example User"
>> user.email
=> "example@railstutorial.org"

>> user.created_at = 1.year.ago  # FUNCIONA!!

# ver bonita una instancia
puts user.attributes.to_yaml?
y user.attributes.


# DUCKTYPING

# For most practical purposes, User.all acts like an
# array, but confirm that in fact it’s of class 
# User::ActiveRecord_Relation.
# Confirm that you can find the length of User.all 
# by passing it the length method (Section 4.2.3). 
# Ruby’s ability to manipulate objects based on how
# they act rather than on their formal class type is
# called duck typing, based on the aphorism that 
# “If it looks like a duck, and it quacks like a duck,
#  it’s probably a duck.”

#-------------------------------------------
#         ENVIRONMENTS
#-------------------------------------------

Box 7.1. Rails environments
Rails comes equipped with three environments: test, development, and production. The default environment for the Rails console is development:

  $ rails console
  Loading development environment
  >> Rails.env
  => "development"
  >> Rails.env.development?
  => true
  >> Rails.env.test?
  => false

  $ rails console test
  Loading test environment
  >> Rails.env
  => "test"
  >> Rails.env.test?
  => true

$ rails server --environment production

rails db:migrate RAILS_ENV=production
rails server RAILS_ENV=production

  $ heroku run rails console
  >> Rails.env
  => "production"
  >> Rails.env.production?
  => true

#-------------------------------------------
#         HELPERS
#-------------------------------------------

# Pluralize

The other new idea is the pluralize text helper,
which is available in the console via the helper
object:

>> helper.pluralize(1, "error")
=> "1 error"
>> helper.pluralize(5, "error")
=> "5 errors"
>> helper.pluralize(2, "woman"),
=> "2 women"
>> helper.pluralize(3, "erratum")
=> "3 errata"


# -------------------------------------------
#         SCAFFOLD
# -------------------------------------------

rails generate scaffold User name:string email:string

# -------------------------------------------
#         TIME
# -------------------------------------------
Time.now
1.year.from_now
10.weeks.ago
ojo que heroku no tiene timezone

#<% t = Time.now %>
#<%= t = t.getlocal("-05:00")  %>

# -------------------------------------------
#         SIZE
# -------------------------------------------
1.kilobyte
5.megabytes

# -------------------------------------------
#         ROLES
# -------------------------------------------


$ rails console --sandbox
>> user = User.first
>> user.admin?
=> false
>> user.toggle!(:admin)
=> true
>> user.admin?
=> true

# -------------------------------------------
#         ERRORS
# -------------------------------------------
# IN METHODS
class Person
  attr_accessor :name
  
  def name=(name)

    # if name == nil || name.size == 0
    if name.nil? || name.empty?
      # puts "aaaaa"
      raise ArgumentError.new('Pilas')
    end
      @name = name
  end

  def initialize(name) 
  # Llama al método name que aparte de las
  # valoraciones hará de setter gracias al name= 
    self.name = name 
  end  
end
Person.new("Pedro") # no lanza excepción
Person.new(nil) # lanza ArgumentError ok
Person.new("") # lanza ArgumentError ok

p = Person.new("Juan")
p.name = "Pedro" # no lanza excepción
p.name = nil # lanza ArgumentError
p.name = "" # lanza ArgumentError


# IN THE RESPONSE

respond_to do |format|
  if @product.save
    format.json { render json: @product, status: :created }
    format.xml { render xml: @product, status: :created }
  else
    format.json { render json: @product.errors, status: :unprocessable_entity }
    format.xml { render xml: @product.errors, status: :unprocessable_entity }
  end
end

  def create
    # params es   Parameters: {"name"=>"Producto 3", "price"=>39, "product"=>{"name"=>"Producto 3", "price"=>39}}
    @product = Product.new(product_params)
    if @product.save
      render json: @product, :status => 201
    else 
      render json: @product.errors.full_messages, :status => 422
    end
  end
# -------------------------------------------
#         JSON
# -------------------------------------------
  def index
    @products = Product.all
    render json: @products
  end
# -------------------------------------------
#         SOLUTIONS HACKER RANK
# -------------------------------------------
    puts 'You have succesfully completed the challenge!'
    exit
# -------------------------------------------
#             BIG O
# -------------------------------------------
1. Different steps get added
# loop takes O(a) then loop takes O(b) => O(a+b)
2. Drop constants
O(2n) => O(n)
3. Different inputs=> differente variables
# loop takes O(b) is inside loop takes O(a) then => O(a*b) NOT O(n**2)

4. Drop non-dominant terms
# loop takes O(n) then loop takes O(n**2) then => O(n**2) NOT O(n+n**2)

# -------------------------------------------
#             SOLVING PROBLEMS
# -------------------------------------------

ver solv_problems.rb 

# -------------------------------------------
#             ALGORITH STRATEGIES
# -------------------------------------------

ver optimization.rb 

# -------------------------------------------
#             RECIBIR
# -------------------------------------------

# Matrices forma A
# Para matriz de 6X6 pero es bastant6e flexible

arr = Array.new(6)
for arr_i in (0..6-1)
    arr_t = gets.strip
    arr[arr_i] = arr_t.split(' ').map(&:to_i)
end
p arr

# Matrices forma B
n, m = gets.strip.split(' ')
n = n.to_i
m = m.to_i
for a0 in (0..m-1)
    a, b, k = gets.strip.split(' ')
    a = a.to_i
    b = b.to_i
    k = k.to_i
end

# Datos individuales
n, d = gets.strip.split(' ')
n = n.to_i
d = d.to_i
a = gets.strip
a = a.split(' ').map(&:to_i)
result = leftRotation(a, d)

# p a # [1, 2, 3, 4, 5]
# p n # 5 elements
# p d # 4 movements


