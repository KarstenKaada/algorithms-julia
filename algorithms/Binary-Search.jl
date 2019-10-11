function Bisect(A,p,r,v)
# A=table, p=left, r=right, v=search value, q=middle
    if p <= r
        q = (p+r)÷2
        if v == A[q]
            return q
        elseif v < A[q]
            return Bisect(A, p, q - 1, v)
        else return Bisect(A, q + 1, r, v)
        end
    end
    return nothing
end

#test
println(Bisect([1,2,3,4,5,6], 1, 6, 4))
