# https://leetcode.com/problems/remove-all-adjacent-duplicates-in-string/

# assumptions
# 1 <= s.length <= 10^5
# s consists of lowercase english letters

# solution 1 works but fails at large scale (too slow)
# from left to right, search for adjacent duplicates. when found, restart loop from beginning of string
# def remove_duplicates(s)
#     left = 0
#     right = 1
#     sub_string = s

#     while right < sub_string.length
#         if sub_string[left] == sub_string[right]
#             sub_string[left..right] = ''
#             left = 0
#             right = 1
#         else
#             left += 1
#             right += 1
#         end
#     end
#     return sub_string
# end

# solution 2 works but fails at large scale (too slow, but handled larger input than option 1)
# try searching the entire string for adjacent duplicates before looping back to the beginning
# first, find and record indices of all consec dupes. insert new indices at front of array
# if dupes array length > 0, remove those ranges from string
# if dupes length = 0, return substring for solution
# def remove_duplicates(s,left=0,right=1)
#     sub_string = s
#     dupes = []
#     while right < sub_string.length
#         if sub_string[left] == sub_string[right]
#             dupes.insert(0,[left,right])
#             left += 2
#             right += 2
#         else
#             left += 1
#             right += 1
#         end
#     end
#     if dupes.length > 0
#         dupes.each{|dupe| sub_string[dupe[0]..dupe[1]] = ''}
#         remove_duplicates(sub_string)
#     else
#         return sub_string
#     end
# end

# another possibilty that feels more complicated
# if consective dupe chars are found, check if the chars on either side are also dupes
# e.g. left - 1..right + 1 (if left > 0 && right < sub_string.length - 1)

# solution 3
# stack methodology
# use output stack to keep track of non duplicative chars
# current str char == last element in stack? pop that last element out of the stack
# current str char != last element in stack? add current char to stack
# this solution passed
def remove_duplicates(s)
    stack = [s[0]]
    index = 1

    while index < s.length
        if s[index] == stack[-1]
            stack.pop
        else
            stack << s[index]
        end
        index += 1
    end
    return stack.join("")
end



# test cases
s = "abbaca"
puts "result: #{remove_duplicates(s)} expected: 'ca'"
puts "=========="

s = "azxxzyzz"
puts "result: #{remove_duplicates(s)} expected: 'ay'"
puts "=========="

s = "aaaaaaaa"
puts "result: #{remove_duplicates(s)} expected: ''"
puts "=========="

s = "aabccdf"
puts "result: #{remove_duplicates(s)} expected: bdf"
puts "=========="
