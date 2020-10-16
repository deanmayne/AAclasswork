class MyQueue
  def initialize
    @store = []
  end

  def peek 
    @store.first

  end

  def size
    @store.length

  end

  def empty?
    @store.length == 0

  end

  def enqueue(value)
    @store.push(value)
  end

  def dequeue
    @store.shift
  end

end


class MyStack
  def initialize
    @store = []
  end

    def size
        @store.length
    end

    def empty?
        @store.length == 0
    end

    def peek
        @store.last
    end

    def push(value)
        @store << value
    end

    def pop
        res = @store.last
        @store = @store[0...-1]
        return res
    end
    

end

class StackQueue
    def initialize
        
    end
end