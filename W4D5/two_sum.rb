def bad_two_sum?(arr,target_sum)
    (0...arr.length).each do |i|
        (i...arr.length).each do |j|
            if arr[i] + arr[j] == target_sum && i != j
                return true
            end
        end
    end
    return false

end

arr = [0, 1, 5, 7]
# p bad_two_sum?(arr, 6) # => should be true
# p bad_two_sum?(arr, 10) # => should be false

def okay_two_sum?(arr, target_sum)
    sorted = arr.sort
    left = 0
    right = arr.length - 1
    while left != right
        if arr[left] + arr[right] == target_sum
            return true
        elsif arr[left] + arr[right] < target_sum
            left += 1
        else   
            right -= 1
        end
    end
    false
    
end

p okay_two_sum?(arr, 6) # => should be true
p okay_two_sum?(arr, 10) # => should be false


def better_two_sum?(arr, target_sum)
    hash = {}
    arr.each_with_index do |ele,i|
        hash[ele] = i
    end
    arr.each_with_index do |ele,i|
        target = target_sum - ele
       return true if !hash[target].nil? && i != hash[target]
    end
    
    false
end

# p better_two_sum?(arr, 6) # => should be true
# p better_two_sum?(arr, 10) # => should be false

