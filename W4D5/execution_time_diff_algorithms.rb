
def my_min_v1(arr)
    min = 0
    arr.each_with_index do |ele1, i1|
        arr.each_with_index do |ele2, i2|
            if i1 < i2 && min == 0
                min = ele1 < ele2 ? ele1 : ele2
            else
                min = min < ele2 ? min : ele2
            end
        end
    end
    min
end


list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min_v1(list)  # =>  -5

def my_min_v2(arr)
    min = arr.first
    arr[1...arr.length].each do |ele|
        min = min < ele ? min : ele
    end
    min
end

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min_v2(list)  # =>  -5

def largest_contiguous_subsum_v1(arr) #O(n^2)
    res = []
    (0...arr.length).each do |i|
        (i...arr.length).each do |j|
            if i <= j
                res << arr[i..j]
            end
        end
    end
    total = []
    res.each do |subarr|
        total << subarr.sum
    end
    total.max
end

list = [5, 3, -7]
# p largest_contiguous_subsum(list) # => 8

# possible sub-sums
[5]           # => 5
[5, 3]        # => 8 --> we want this one
[5, 3, -7]    # => 1
[3]           # => 3
[3, -7]       # => -4
[-7]          # => -7

[-3, -2, -1]

def largest_contiguous_subsum_v2(arr)
    largest_sum = 0
    max = arr.first

    arr.each do |ele|
        if ele > 0 
            largest_sum += ele
        end
        if ele > max
            max = ele
        end
    end

    if max < 0
        return max
    else
        return largest_sum
    end

end

p largest_contiguous_subsum_v2(list) # => 8
