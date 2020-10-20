class MaxIntSet
  attr_accessor :store
  attr_reader :size
  def initialize(max)
    @store = Array.new(max, false)
    @size = max

  end

  def insert(num)
    if num > 0 && num < @size
      @store[num] = true
    else
      raise "Out of bounds"
    end
  end

  def remove(num)
    if num > 0 && num < @size
      @store[num] = false
    else
      raise "Out of bounds"
    end
  end

  def include?(num)
      @store[num] == true 
  end

  private

  def is_valid?(num)
  end

  def validate!(num)
  end
end


class IntSet
  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
  end

  def insert(num)
      @store[num % @store.length] << num
  end

  def remove(num)
    @store[num % @store.length].delete(num)
  end

  def include?(num)
      @store[num % @store.length].include?(num)
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @store.length
  end
end

class ResizingIntSet
  attr_reader :count
  attr_accessor :store
  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
  end

  def insert(num)
    if !self.include?(num)
      @store[num % @store.length] << num
      @count += 1 
      if @count == @store.length
        resize!
      end
    end
  end

  def remove(num)
    if self.include?(num)
      @store[num % @store.length].delete(num)
      @count -= 1
    end
  end

  def include?(num)
    @store[num % @store.length].include?(num)
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @store.length
  end

  def resize!
    previous_store = @store.dup.flatten
    new_set = ResizingIntSet.new(@store.length * 2 )
    previous_store.each {|ele| new_set.insert(ele)}
    @store = new_set.store
  end
end

