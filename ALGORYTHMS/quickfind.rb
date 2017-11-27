
# EL EJERCICIO CONSISTE EN CONECTAR LOS NÚMEROS
# EN MENCIÓN, PARA GENERAR GRUPOS. GRUPOS
# INTERCONECTADOS QUE SABRAN LA INFO DE SUS MIEMBROS



def connected(p,q,ind)
	p ind[p] == ind[q]
	puts "-------------------"
end

def union(p,q,ind)
	# p ind
	x = 0
	memo = ind[q]
	puts "turn every #{ind[q]} into a #{ind[p]}"
	print ind.join(' ') + "\n"
	while (x < ind.size) do
		# puts "x->#{x} if #{ind[x]} is equal to #{memo}"
		if ind[x] == memo
				ind[x] = ind[p]
				# p "Ok change -> #{ind}"
				print ind.join(' ') + "\n"
		end
		x+=1
	end
	puts "-------------------"
end

# INPUT WITHTAKE
n = gets.to_i
ind = []
(n+1).times do |x|
	ind[x] = x
end
puts "--------------------------------------------------"
puts "                      START       "
puts "--------------------------------------------------"
puts " "
puts "----------------------------"
puts "ind inicial"
# p ind
print ind.join('  ') + "\n"
puts "----------------------------"
union(4,3,ind)
union(3,8,ind)
union(6,5,ind)
union(9,4,ind)
union(2,1,ind)
connected(8,9,ind)#=> true
connected(5,0,ind)#=> false
union(5,0,ind)
union(7,2,ind)
union(6,1,ind)
puts "----------------------------"
puts "ind final"
# p [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
# p ind
print ind.join('  ') + "\n"
puts "----------------------------"
# [1,1,1,8,8,1,1,1,8,8]
#o al menos solo 2 grupos



