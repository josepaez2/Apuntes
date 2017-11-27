
# EL EJERCICIO CONSISTE EN CONECTAR LOS NÚMEROS
# EN MENCIÓN, PARA GENERAR GRUPOS. GRUPOS
# INTERCONECTADOS QUE SABRAN LA INFO DE SUS MIEMBROS

# HAY TREES CON ROOTS

#    i    0  1  2  3  4  5  6  7  8  9
# -------------------------------------
# id[i]   0  9  6  5  4  2  6  1  0  5

# CON LA SIGUIENTE TABLA CUALES SON LAS ROOTS DE 3 Y 7

# 3: 3->5, 5->2, 2->6
# 7: 7->1, 1->9, 9->5, 5->2, 2->6
def root(a)
	while (a != ind[a])
		a = ind[a]
	end
end


def connected(p,q,ind)
	p ind[p] == ind[q]
	puts "-------------------"
end

def union(a,b,ind)
	a = root(p)
	b = root(q)
	ind[a] = b
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





