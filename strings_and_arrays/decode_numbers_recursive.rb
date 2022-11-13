# "a" = 1
# "b" = 2
# "c" = 3
# ....
# "z" = 26
# "ab" = "12"
# given converted version of string, e.g. data = "12",
# return the number of possible letter combinations to create the resulting string
# (how many ways to make the value of data, 
# how many ways to decode this message back to the original message)
# e.g. 1 + 2 = a + b, 12 = l ==> 2 ways


# base cases
# string is empty
## "" -> "" num_ways("") = 1
# string starts with 0
## num_ways("011") = 0

#recursive case
## ex 1 need to call recursion twice
## num_ways("12345") = 
##      num_ways("2345") + num_ways("345")
## ex 2 only need to call recursion once bc first two numbers are greater than 26
## num_ways("27345") = num_ways("7345")

# method 1
# inefficient if substrings are repeated frequently, e.g. "11111"
# this would require calling helper again on data that has already been solved for, O(2^n)

def num_ways(data)
    return helper(data, data.length)
end

def helper(data, k)
    return 1 if k == 0
    
    s = data.length - k
    return 0 if data[s] == '0'

    result = helper(data, k - 1)
    if k >= 2 and (data[0,2]).to_i <= 26
       result += helper(data, k - 2)
    end
    return result
end

data5 = "12345"
result = num_ways(data5)
puts result

data4 = "1234"
result = num_ways(data4)
puts result

data3 = "123"
result = num_ways(data3)
puts result

data2 = "12"
result = num_ways(data2)
puts result

data1 = "1"
result = num_ways(data1)
puts result

data_empty = ""
result = num_ways(data_empty)
puts result

data01 = "01"
result = num_ways(data01)
puts result

data01_long = "01234"
result = num_ways(data01_long)
puts result
