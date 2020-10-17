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
        @stack1 = MyStack.new
        @stack2 = MyStack.new
    end

    def size
        @stack1.size + @stack2.size
    end

    def empty?
        @stack1.empty? && @stack2.empty?
    end

    def enqueue(value)
        @stack1.push(value)
    end

    def dequeue
        if !@stack2.empty? 
            @stack2.pop
        else
            @stack2 << @stack1.pop until @stack1.empty
            @stack2.pop
        end

    end
end

class MinMaxStack
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
        if self.empty?
            @store << {"value" => value, "min" => value, "max" => value}
        else
            min = self.min
            max = self.max
            if min > value
                min = value
            end
            if max < value
                max = value
            end
            @store << {"value" => value, "min" => min, "max" => max}
        end
    end
    
    def min 
        self.peek["min"]
    end

    def max 
        self.peek["max"]
    end

    def pop
        @store.pop
    end

end

class MinMaxStackQueue

    def initialize
        @stack1 = MinMaxStack.new
        @stack2 = MinMaxStack.new
    end

    def size
        @stack1.size + @stack2.size
    end

    def empty?
        @stack1.empty? && @stack2.empty?
    end

    def enqueue(value)
        @stack1.push(value)
    end

    def dequeue
        if !@stack2.empty? 
            @stack2.pop
        else
            @stack2 << @stack1.pop until @stack1.empty
            @stack2.pop
        end

    end

end