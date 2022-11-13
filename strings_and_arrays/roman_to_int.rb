# https://leetcode.com/problems/roman-to-integer/

def roman_to_int(s)
    sum = 0
    k = s.length
    while k > 0 do
        sub_sum = nil
        sub_sum, s = roman_to_int_helper(s)
        sum += sub_sum
        k = s.length
    end
    return sum
end

def roman_to_int_helper(s)
    ## base cases
    return 0, "" if s.length == 0
    return helper_hash(s), "" if s.length == 1

    x = s[s.length - 1]
    y = s[s.length - 2]

    if helper_hash(y) < helper_hash(x)
        sub_string = s[-2..-1]
        new_s = s[0...-2]
        sub_sum = helper_hash(sub_string[-1]) - helper_hash(sub_string[-2])
        return sub_sum, new_s
   else
        sub_string = s[-1]
        new_s = s[0...-1]
        sub_sum = helper_hash(sub_string)
        return sub_sum, new_s
   end   
end

def helper_hash(k)
    hash = {
        "I": 1,
        "V": 5,
        "X": 10,
        "L": 50,
        "C": 100,
        "D": 500,
        "M": 1000
    }
    return hash[k.intern]
end

puts "LIV = #{roman_to_int("LIV")}"
# 54
puts "---------------"
puts "III = #{roman_to_int("III")}"
# 3
puts "---------------"
puts "LVIII = #{roman_to_int("LVIII")}"
# 58
puts "---------------"
puts "MCMXCIV = #{roman_to_int("MCMXCIV")}"
# 1994