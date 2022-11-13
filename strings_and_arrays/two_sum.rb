# https://leetcode.com/problems/two-sum/

def two_sum(nums, target)
    hash = {}
    length = nums.length

    for i in (0..length - 1)
        complement = target - nums[i]
        
        if hash.key?(complement)
            result = [i, hash[complement]].sort
        else
            hash[nums[i]] = i
            i += 1
        end
    end
    return result
end

two_sum([1,2,3], 3)
two_sum([3,2,3], 6)
two_sum([3,3], 6)