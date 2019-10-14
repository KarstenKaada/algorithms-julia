function SelectionSort(A)
    #in place sorting
    #A[1...i-1] is sorted and A[i...n] is unsorted
    for i = 1 : length(A)
        key = A[i]
        for j = i + 1 : length(A)
            if A[j] < key
                key = A[j]
                A[j] = A[i]
                A[i] = key
            end
        j += 1
        end
    end
    return A
end

#test
println(SelectionSort([4,2,1,6,1,2,3,5,123,71,24,124]))
