# optimized bubble sort with break if no swaps were made in that pass, meaning data is already sorted

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