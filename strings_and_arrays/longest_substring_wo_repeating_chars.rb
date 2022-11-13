# https://leetcode.com/problems/longest-substring-without-repeating-characters/

def length_of_longest_substring(s)
    # Track the max value
    max_length = 0

    # Set the current range and sub string of our sliding window
    left = 0
    right = 0
    current_sub_string = ""

    # Extend the sliding window until criteria is met (a character is repeated)
    while right < s.length
        current_sub_string += s[right]
        right += 1

        # Then contract the sliding window until it no longer violates condition (no char repeated)
        #  if current_sub_string.include?(s[right])
        # if sub string includes s[right], then move left pointer + 1

        while left < right && right < s.length && current_sub_string.include?(s[right])
            max_length = current_sub_string.length if current_sub_string.length > max_length
            current_sub_string = current_sub_string[1..-1]
            left += 1
        end
        max_length = current_sub_string.length if current_sub_string.length > max_length
    end
    return max_length
end

s = "aabc"
puts "result: #{length_of_longest_substring(s)}, expected: 3"
puts "==========="

s = "abca"
puts "result: #{length_of_longest_substring(s)}, expected: 3"
puts "=============="

s = "abcabcbb"
puts "result: #{length_of_longest_substring(s)}, expected: 3"
puts "=============="

s = "bbbbb"
puts "result: #{length_of_longest_substring(s)}, expected: 1"
puts "=============="

s = "pwwkew"
puts "result: #{length_of_longest_substring(s)}, expected: 3"
puts "=============="

s = ""
puts "result: #{length_of_longest_substring(s)}, expected: 0"
puts "=============="