def my_uniq(array)
    result = []
    array.each do |ele|
        result << ele if !result.include?(ele)
    end
    result
end

def two_sum(array)
    pairs_index = []
    array.each_with_index do |ele, i1|
        array.each_with_index do |ele2, i2|
            if i1 < i2 && ele + ele2 == 0
                pairs_index << [i1, i2]
            end
        end
    end
    pairs_index
end

def my_transpose(array)
    dim = array[0].length
    result = Array.new(dim){Array.new(dim)}
    
    dim.times do |i|
        dim.times do |j|
            result[j][i] = array[i][j]
        end
    end
    result
end

def stock_picker(array)
    best_profit = Hash.new{|h,k| h[k] = []}
    array.each_with_index do |ele1,i1|
        array.each_with_index do |ele2,i2|
            if i1 < i2
                difference = (ele2 - ele1)
                best_profit[difference] << [i1,i2]
            end
        end
    end
    best_profit[best_profit.keys.max][0]
end
