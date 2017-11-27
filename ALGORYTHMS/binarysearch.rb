def finding_bin(key)
	a = [1,43,46,67,78,89,99,]
lo = 0
hi = a.length - 1
	while lo<= hi
		mid = lo + (hi-lo)/2
		if key < a[mid]
		 hi = mid - 1
		elsif key > a[mid]
		 	lo = mid + 1
		else
			return mid
		end
	end
		return "no existe en el array"
end

p finding_bin(46)