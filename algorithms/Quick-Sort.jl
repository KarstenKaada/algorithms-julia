function Partition(A,p,r)
    #A=table, p=left, r=right, x=split element
    #i=last index small values j=last index big values
    x = A[r]
    i = p - 1 #starts at index zero => i += 1 in for loop
    for j = p : (r - 1)
        if A[j] <= x
            i += 1 #increment index small numbers by 1
            t = A[j] #temporary variable
            A[j] = A[i]
            A[i] = t
        end
    end
    A[r] = A[i+1]
    A[i+1] = x #places the pivot element where it belongs
    return i + 1 #returns the split index
end

function QuickSort(A,p,r)
    if p < r
        q = Partition(A,p,r)
        QuickSort(A,p,q-1) #sorting left side recursively
        QuickSort(A,q+1,r) #sorting right side recursively
    end
    return A
end

#test
unsortedArray = [6, 5, 41, 2,63,12,42]
println(QuickSort(unsortedArray, 1, length(unsortedArray)))
