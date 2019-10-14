function CountingSort(A, k)
    C = Array{Int64}(undef, k + 1)
    B = Array{Int64}(undef, length(A))

    for i = 1:length(C)
        C[i] = 0
    end
    for i = 1:length(B)
        B[i] = 0
    end

	#C[i] now contains the number of elements equal to i
    for i = 1:length(A)
        C[A[i]] += 1
    end

	#C[i] now contains the number of elements less than or equal to i
    for i = 2:length(C)
        C[i] = C[i] + C[i-1]
    end

    for j = 1:length(A)
        i = length(A) + 1 - j
        B[C[A[j]]] = A[j]
        C[A[j]] = C[A[j]] - 1
    end

    return B
end

#test
println(CountingSort(
    [4, 2, 3, 1, 1, 9, 8, 5, 4, 2, 3, 4, 5, 6, 2, 3, 1, 2, 4, 5, 1, 2,],
    9
))
