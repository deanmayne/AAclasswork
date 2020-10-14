class Board
    def initialize(player1, player2)
        @board = Array.new(8){Array.new()}
        @cursor
        @display
        @player1 = player1
        @player2 = player2
        @current_player = @player1
    end

    def play

    end

    def notify_players

    end

    def swap_turn!
        @current_player == @player1 ? @current_player = player2 : @current_player = player1
    end
end

p Board.new