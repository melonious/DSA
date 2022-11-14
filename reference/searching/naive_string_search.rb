def naive_string_search(long, short)
    count = 0
    i = 0
    while i < long.length 
        j = 0
        while j < short.length
            break if short[j] != long[i+j]
            count += 1 if j == (short.length - 1)
            j += 1
        end
        i += 1
    end
    return count
end

puts naive_string_search("lorie loled lol", "lol")