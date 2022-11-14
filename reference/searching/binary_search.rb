def binary_search(arr, elem)
    left = 0
    right = arr.length - 1
    middle = ((left + right) / 2).floor
    while arr[middle] != elem && left <= right
        if elem < arr[middle]
            right = middle - 1
        else
            left = middle + 1
        end
        middle = ((left + right) / 2).floor
    end
    return arr[middle] == elem ? middle : -1
end

puts binary_search([2,5,6,9,13,15,28,30], 103)
puts "========="

puts binary_search([2,5,6,9,13,15,28,30], 28)
puts "========="