# https://leetcode.com/problems/most-common-word/

def most_common_word(paragraph, banned)
    # split paragraph into array with no spaces or punctuation (!?',;.), all downcased, banned words removed
    p_array = paragraph.downcase.gsub(/[!?',;.]/, ' ').split - banned

    # return early if there is only one item in array
    return p_array[0] if p_array.length == 1

    # iterate through array once
    ## if word is in banned array, delete it from array
    ## otherwise use hash to store frequency of word (lowercase everything)
    frequency = {}
    p_array.each do |word|
        frequency[word] ? frequency[word] += 1 : frequency[word] = 1
    end

    # declare a max_frequency variable
    # iterate through array again and update max_frequency if value is higher than current max_value
    max_f_count = 0
    max_f_word = nil
    p_array.each do |word|
        if frequency[word] > max_f_count
            max_f_count = frequency[word]
            max_f_word = word
        end
    end
    return max_f_word
end

# test cases
paragraph = "Bob hit a ball, the hit BALL flew far after it was hit."; banned = ["hit"]
puts "result: #{most_common_word(paragraph,banned)}, expected: 'ball'"
puts "=========="

paragraph = "a."; banned = []
puts "result: #{most_common_word(paragraph,banned)}, expected: 'a'"
puts "=========="

paragraph = "a, a, a, a, b,b,b,c, c"; banned = ["a"]
puts "result: #{most_common_word(paragraph,banned)}, expected: 'b'"
puts "=========="