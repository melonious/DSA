# https://leetcode.com/problems/remove-duplicates-from-sorted-array/

# constraints
# 1 <= nums.length <= 3 * 10^4
# -100 <= nums[i] <= 100
# nums sorting in non-decreasing order

def remove_duplicates(nums)
    size = nums.length
    insert_index = 1
    range = (insert_index...size).to_a

    range.each do |i|
        if nums[i - 1] != nums[i]
            nums[insert_index] = nums[i]
            insert_index += 1
        end
    end
    return insert_index
    return nums
end

# test cases
nums = [1,1,2]
puts "result: #{remove_duplicates(nums)}, expected: 2"
puts "======"

nums = [0,0,1,1,1,2,2,3,3,4]
puts "result: #{remove_duplicates(nums)}, expected: 5"
puts "======"

nums = [1]
puts "result: #{remove_duplicates(nums)}, expected: 1"
puts "======"

nums = [1,2]
puts "result: #{remove_duplicates(nums)}, expected: 2"
puts "======"