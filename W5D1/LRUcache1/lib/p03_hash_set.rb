class HashSet
  attr_reader :count
  attr_reader :store

  def initialize(num_buckets = 8)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
  end

  def insert(key)
    new_key = key.hash
    @store[new_key % @store.length] << key
    @count += 1
    resize! if @count >= @store.length

  end

  def include?(key)
    new_key = key.hash
    @store[new_key % @store.length].include?(key)
  end

  def remove(key)
    if self.include?(key)
      new_key = key.hash
      @store[new_key % @store.length].delete(key)
      @count -= 1
    end
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @store.length
  end

  def resize!
    previous_store = self.store.flatten
    new_store = HashSet.new(self.store.length * 2)
    previous_store.each {|ele| new_store.insert(ele)}
    @store = new_store.store
  end
end
