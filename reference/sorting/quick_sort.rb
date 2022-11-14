# this implementation uses arr[0] as the pivot which has drawbacks if the array is mostly or completely sorted
    ## want to choose a pivot that has a minimal chance of already being in the right place
# time complexity: best/average O(n log n), worst O(n^2)
# space complexity: O(n)

def quick_sort(arr, left=0, right=(arr.length - 1))
    
end

def pivot_helper(arr, start=0, end=(arr.length - 1))
    # assumes pivot is always first element in arr
    pivot = arr[start]
    swap_idx = start

    i = start + 1
    while i <= end
        if pivot > arr[i]
            swap_idx += 1
            swap(arr, swap_idx, i)
        end
    end

    # swap the pivot from the start to the new pivot point
    swap(arr, start, swap_idx)
    return swap_idx
end

def swap(arr, idx1, idx2)
    arr[idx1], arr[idx2] = arr[idx2], arr[idx1]
end

# test cases
puts merge_sort([2,1,9,76,4])
puts "==========="

puts merge_sort([134,48,12,90,-5])
puts "==========="

puts merge_sort([17,0,3,17,-82,17])
puts "==========="