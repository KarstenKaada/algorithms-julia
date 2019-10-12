function Merge(A, p, q, r)
    L = A[p:q] #left subarray of A
    R = A[q+1:r] #right subarray of A

    append!(L, 2^63 - 1)
    append!(R, 2^63 - 1)

    i = 1
    j = 1

    for k = p:r #iterates from 1 -> size(A, 1)
        if L[i] <= R[j] #compares the indexes of the subarrays
            A[k] = L[i]
            i += 1
        else
            A[k] = R[j]
            j += 1
        end
    end
    return A
end

# #test
# Merge([1, 3, 6, 2, 4, 7], 1, 3, 6)


function MergeSort(A, p, r)
    if p < r
        q = floor(Int, (p + r)/2)
        MergeSort(A, p, q)
        MergeSort(A, q + 1, r)
        Merge(A, p, q, r)
    end
    return A
end

# test
# println(MergeSort([4, 1, 4, 3, 2, 9], 1, 6))
