def linear_search(arr,val)
    i = 0
    while i < arr.length
        return i if arr[i] == val
        i += 1
    end
    return -1
end

puts linear_search([34,51,1,2,3,45,56,687], 100)
puts "========="

puts linear_search([34,51,1,2,3,45,56,687], 45)
puts "========="