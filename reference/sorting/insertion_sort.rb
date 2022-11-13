def insertion_sort(arr)
    i = 1
    while i < arr.length
        current_val = arr[i]
        
        j = i - 1
        while j >= 0 && arr[j] > current_val
            arr[j+1] = arr[j]
            j -= 1
        end
        arr[j+1] = current_val
        i += 1
    end
    return arr
end

#test cases

puts insertion_sort([2,1,9,76,4])
puts "==========="

puts insertion_sort([134,48,12,90,-5])
puts "==========="

puts insertion_sort([17,0,3,17,-82,17])
puts "==========="