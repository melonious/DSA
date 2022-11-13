# https://leetcode.com/problems/first-unique-character-in-a-string/

# runtime is barely acceptable but memory usage is good

def first_uniq_char(s)
    char_frequency = {}

    i = 0
    while i < s.length
        if char_frequency.key?(s[i])
            char_frequency[s[i]] += 1
        else
            char_frequency[s[i]] = 1
        end
        i += 1
    end

    current_index = 0
    while current_index <= s.length
        if char_frequency[s[current_index]] == 1
            return current_index
            break
        elsif current_index == s.length
            return -1
            break
        else
            current_index += 1
        end
    end
end

# tests
s = "leetcode"
puts "result: #{first_uniq_char(s)}, expected: 0"
puts "==========="

s = "loveleetcode"
puts "result: #{first_uniq_char(s)}, expected: 2"
puts "==========="

s = "aabb"
puts "result: #{first_uniq_char(s)}, expected: -1"
puts "==========="