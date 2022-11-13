# https://leetcode.com/problems/reverse-words-in-a-string/

# Follow-up: If the string data type is mutable in your language, 
# can you solve it in-place with O(1) extra space?

def reverse_words(s)
    # declare variable to keep track of index where newly sorted string ends starting at 0
    # start at the end of the string

end

# test cases
s = "the sky is blue"
puts "result: #{reverse_words(s)}, expected: 'blue is sky the'"
puts "============="

s = "  hello world  "
puts "result: #{reverse_words(s)}, expected: 'world hello'"
puts "============="

s = "a good   example"
puts "result: #{reverse_words(s)}, expected: 'example good a'"
puts "============="


"  hello world  "
if current index is a space and index - 1 is a space, s[i] = ''
else if current i is not a space udate counter = i