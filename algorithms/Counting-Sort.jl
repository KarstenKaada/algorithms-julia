function CountingSort(A, k)

	C = zeros(Int64, k + 1)
	B = zeros(Int64, length(A))

	#C[i] now contains the number of elements equal to i
	for i = 1:length(A)
	    C[A[i]] += 1
	end

	#C[i] now contains the number of elements less than or equal to i
	for i = 2:length(C)
	    	C[i] = C[i] + C[i-1]
	end

	for j = length(A): -1 : 1
    	B[C[A[j]]] = A[j]
    	C[A[j]] = C[A[j]] - 1
	end

	return B
	end

#test
println(CountingSort([4,52,12,81,42,24,151,2,4,22,6,2,4,5,1,2,4],151))
