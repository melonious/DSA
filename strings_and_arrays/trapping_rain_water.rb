# https://leetcode.com/problems/trapping-rain-water/

# constraints
# n == height.length
# 1 <= n <= 2 * 10^4 (n is never 0)
# 0 <= height[i] <= 105 (height >= 0)

# edge cases
# height starts or ends with 0

# possible solutions
# sliding window (left pointer moves when right pointer value is >= left value)
## calculate sub_sum while height[right] < height[left]
## when left pointer moves

# using 2 pointers (from solution)
# Initialize left pointer to 0 and right pointer to size-1
# while left < right do
    # if height[left] < height[right]
        # if height[left] >= left max, update left max
        # else add left max - height[left] to result
        # add 1 to left
    # else
        # if height[right] >= right max, update right max
        # else add right max - height[right] to result
        # subtract 1 from right


def trap(height)
    left = 0
    left_max = 0
    right = height.length - 1
    right_max = 0
    result = 0

    while left < right
        if height[left] < height[right]
            if height[left] >= left_max
                left_max = height[left]
            else
                result += (left_max - height[left])
            end
            left += 1
        else
            if height[right] >= right_max
                right_max = height[right]
            else
                result += (right_max - height[right])
            end
            right -= 1
        end
    end
    return result
end

# learn how to do this with stacks


# test cases

height = [0,1,0,2]
puts "result: #{trap(height)}, expected: 1"
puts "========="

height = [0,1,0,2,1,0,1,3,2,1,2,1]
puts "result: #{trap(height)}, expected: 6"
puts "========="

height = [4,2,0,3,2,5]
puts "result: #{trap(height)}, expected: 9"
puts "========="