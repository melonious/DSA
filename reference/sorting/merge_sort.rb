# time complexity: O(n log n)
# space complexity: O(n)

# use recursion to break input array down into arrays of length 0||1 and then join them back together sorted
def merge_sort(arr)
    return arr if arr.length <= 1
    mid = (arr.length/2).floor
    left = merge_sort(arr.slice(0,mid))
    right = merge_sort(arr.slice(mid..-1))
    return merge_helper(left, right)
end

def merge_helper(arr1, arr2)
    results  = []
    i = 0
    j = 0

    # this will merge all elements from both arrays if arr1.length == arr2.length
    while i < arr1.length && j < arr2.length
        if arr2[j] > arr1[i]
            results << arr1[i]
            i += 1
        else
            results << arr2[j]
            j += 1
        end 
    end

    # otherwise, once one array is exhausted move the rest of the other array to the end of the results array
    while i < arr1.length
        results << arr1[i]
        i += 1
    end
    while j < arr2.length
        results << arr2[j]
        j += 1
    end
    return results
end

# test cases
puts merge_sort([2,1,9,76,4])
puts "==========="

puts merge_sort([134,48,12,90,-5])
puts "==========="

puts merge_sort([17,0,3,17,-82,17])
puts "==========="