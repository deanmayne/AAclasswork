require_relative "classes.rb"

def windowed_max_range(arr, w)
    max_range = nil
    range = 0
    (0..arr.length - w).each do |i|
        if max_range == nil || (arr[i...i + w].max - arr[i...i + w].min) > range           
            max_range = arr[i...i + w]
            range = max_range.max - max_range.min
        end
    end 
    range
end

# p windowed_max_range([1, 0, 2, 5, 4, 8], 2) == 4 # 4, 8
# p windowed_max_range([1, 0, 2, 5, 4, 8], 3) == 5 # 0, 2, 5
# p windowed_max_range([1, 0, 2, 5, 4, 8], 4) == 6 # 2, 5, 4, 8
# p windowed_max_range([1, 3, 2, 5, 4, 8], 5) == 6 # 3, 2, 5, 4, 8


def windowed_max_range_v2(arr,w)
    stack = MinMaxStackQueue.new
    

end



p windowed_max_range_v2([1, 0, 2, 5, 4, 8], 2) == 4 # 4, 8
p windowed_max_range_v2([1, 0, 2, 5, 4, 8], 3) == 5 # 0, 2, 5
p windowed_max_range_v2([1, 0, 2, 5, 4, 8], 4) == 6 # 2, 5, 4, 8
p windowed_max_range_v2([1, 3, 2, 5, 4, 8], 5) == 6 # 3, 2, 5, 4, 8