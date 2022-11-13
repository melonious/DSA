# given a staircase with n steps
# if n = 4, staircase will have four steps
# can only take one or two steps at a time
# difficult case: limited in number of steps that can be taken (
# e.g. x = [1,3,5] cannot take two steps, cannot take 5 if there are less than 5 steps

#base cases (choose two)
## if n = 1
## consider bottom step as index 0, top step as index 1
## possible paths: [0,1] ==> one possible path

## if n = 2
## consider bottom step as index 0, top step as index 2
## possible paths: [0,1,2], [0, 2] ==> two possible paths

# n = 0, num_ways(n) = 1 --> edge case, but use as base case
# n = 1, num_ways(n) = 1
# n = 2, num_ways(n) = 2 --> don't use in base cased bc only pick 2 base cases

#recursive case
## if n = 3
## consider bottom step as index 0, top step as index 3
## possible paths: [0,1,2,3], [0,1,3], [0,2,3] ==> three possible paths

## next, relabel steps from the top instead of the bottom
## if n = 3
## consider bottom step as 3, top step as 0
## possible paths: [3,2,1,0], [3,2,0], [3,1,0] ==> three possible paths
# after stepping from 3 to 2, resulting options are the same as n = 2
# after stepping from 3 to 1, resulting options are the same as n = 1
# num_ways(3) = num_ways(2) + num_ways(1)
# num_ways(n) = num_ways(n-1) + num_ways(n-2)

def num_ways(n)
    if n == 0 || n == 1
        return 1     
   else
        return num_ways(n-1) + num_ways(n-2)
   end
end

puts "n = 0: #{num_ways(0)}"
puts "n = 1: #{num_ways(1)}"
puts "n = 2: #{num_ways(2)}"
puts "n = 3: #{num_ways(3)}"
puts "n = 4: #{num_ways(4)}"
