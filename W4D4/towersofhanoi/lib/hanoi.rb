class Game 
    attr_reader :stacks
    def initialize
        @stacks = [[1, 2, 3], [] , []]
    end

    def move(pos)
        start, last = pos
        raise "Empty stack" if @stacks[start].empty?
        @stacks[last] << @stacks[start].pop #remove last ele and returns the ele that was removed
    end

    def won?
        @stacks.any?([3,2,1])

    end

    def input
        puts 'Please enter a starting position and end position'
        response = get.chomp
        response.split(',').map(&:to_i)
    end

     def play
        render #display stack
        until won?
            response = input
            self.move(response)
            render #later make method
        end
    end

end