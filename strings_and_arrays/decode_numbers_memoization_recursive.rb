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

# method 2
# use dynamic programming and memoization to store cases that have already been solved
# create memo of data.length +1 (e.g n+1 to solve for n times)
# num_ways("111")
# memo = [nil,nil,nil,nil]
# store helper("111",k) at index k

def num_ways_dp(data)
    memo = Array.new(data.length + 1)   #initialize an array of nils
    return helper_dp(data, data.length, memo)
end

def helper_dp(data, k, memo)
    #first base case
    return 1 if k == 0

    #second base case
    s = data.length - k
    return 0 if data[s] == '0'

    # memo already includes result ? return result : continue on to calculate and add to memo
    return memo[k] if memo[k] != nil

    result = helper_dp(data, k - 1, memo)
    if k >= 2 and (data[0,2]).to_i  <= 26
        result += helper_dp(data, k - 2, memo)
    end
    memo[k] = result

    # uncomment this line to see the memo at work
    # puts "data is: #{data}, k is #{k}, memo is #{memo}"
    return result
end

data5 = "12345"
result = num_ways_dp(data5)
puts result
puts "---"
data4 = "1234"
result = num_ways_dp(data4)
puts result
puts "---"
data3 = "123"
result = num_ways_dp(data3)
puts result
puts "---"
data2 = "12"
result = num_ways_dp(data2)
puts result
puts "---"
data1 = "1"
result = num_ways_dp(data1)
puts result
puts "---"
data_empty = ""
result = num_ways_dp(data_empty)
puts result
puts "---"
data01 = "01"
result = num_ways_dp(data01)
puts result
puts "---"
data01_long = "01234"
result = num_ways_dp(data01_long)
puts result
