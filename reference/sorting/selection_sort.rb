# selection sort performs the worst on mostly sorted data compared to bubble and insertion sort
# however, it is simple to understand (its greatest virtue)
# potentially better than bubble sort if you need to minimize the number of swaps being made
# time complexity: worst/avg O(n^2), best O(n)
# space complexity O(1)

def selection_sort(arr)
    i = 0
    while i < arr.length
        lowest = i
        
        j = i + 1
        while j < arr.length
            lowest = j if arr[j] < arr[lowest]
            j += 1
        end
        
        if i != lowest
            arr[i], arr[lowest] = arr[lowest], arr[i]    
        end
        i += 1
    end
    return arr
end

# test cases

puts selection_sort([2,1,9,76,4])
puts "==========="

puts selection_sort([134,48,12,90,-5])
puts "==========="

puts selection_sort([17,0,3,17,-82,17])
puts "==========="