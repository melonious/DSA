# this implementation uses arr[0] as the pivot which has drawbacks if the array is mostly or completely sorted
    ## want to choose a pivot that has a minimal chance of already being in the right place
# time complexity: best/average O(n log n), worst O(n^2)
# space complexity: O(n)

def quick_sort(arr, left=0, right=(arr.length - 1))
    if left < right
        pivot_idx = pivot_helper(arr, left, right)
        # left
        quick_sort(arr, left, (pivot_idx - 1))
        #right
        quick_sort(arr, (pivot_idx + 1), right)
    end
    return arr
end

def pivot_helper(arr, left=0, right=(arr.length - 1))
    # assumes pivot is always first element in arr
    pivot = arr[left]
    swap_idx = left

    i = left + 1
    while i <= right
        if pivot > arr[i]
            swap_idx += 1
            swap(arr, swap_idx, i)
        end
        i += 1
    end

    # swap the pivot from the start to the new pivot point
    swap(arr, left, swap_idx)
    return swap_idx
end

def swap(arr, idx1, idx2)
    arr[idx1], arr[idx2] = arr[idx2], arr[idx1]
end

# test cases
puts quick_sort([2,1,9,76,4])
puts "==========="

puts quick_sort([134,48,12,90,-5])
puts "==========="

puts quick_sort([17,0,3,17,-82,17])
puts "==========="