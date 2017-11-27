require 'benchmark'

# puts Benchmark.measure { "a"*1_000_000 }

S = [-25,-18,-14,-12,-10,-7,-6,-3,2,4,8,10,27,35,43,59,78,83,91,101,203,305,408]
p S.sort

Benchmark.bm do |x|
	x.report{	
		arr = []
		counter = 0
		for i in (0..S.size-1)
			for j in (0..S.size-1)
					if S.index(-(S[i]+S[j]))
						# existe ese trío?
						if !arr.index([S[i], S[j], -(S[i]+S[j])].sort)
							# si no existe, guardarlo
							arr.push([S[i], S[j], -(S[i]+S[j])].sort)
							puts "Found a Match"
							counter+=1
						end
					end
			end
		end
		p counter
		p arr
	}
	x.report{	
		counter = 0
		arr = []
		for i in (0..S.size-1)
			for j in (0..S.size-1)
				for k in (0..S.size-1)
					if S[i]+S[j]+S[k] == 0
						# existe ese trío?
						if !arr.index([S[i], S[j], S[k]].sort)
							# si no existe, guardarlo
							arr.push([S[i], S[j], S[k]].sort)
							puts "Found a Match"
							counter+=1
						end
					end
				end
			end
		end
		p counter
		p arr
	}
end


