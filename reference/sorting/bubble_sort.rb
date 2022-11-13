# optimized bubble sort with break if no swaps were made in that pass, meaning data is already sorted
# bubble sort can perform well on mostly sorted arrays or small data sets
# time complexity: worst/avg O(n^2), best O(n)
# space complexity O(1)

def bubble_sort(arr)
    i = arr.length
    while i > 0
        no_swaps = true

        j = 0
        while j < (i - 1)
            if arr[j] > arr[j + 1]
                arr[j], arr[j+1] = arr[j+1], arr[j]
                no_swaps = false
            end
            j += 1
        end
        break if no_swaps
        i -= 1
    end
    return arr
end

# test cases
puts bubble_sort([8,1,2,3,4,5,6,7])
puts "==========="

puts bubble_sort([134,48,12,90,-5])
puts "==========="

puts bubble_sort([17,0,3,17,-82,17])
puts "==========="