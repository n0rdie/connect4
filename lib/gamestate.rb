require 'colorize'
require './lib/cell'
require './lib/column'
require './lib/board'
require './lib/gamestate'

class Gamestate
    attr_reader :ai, :board
    def initialize
        @ai = Gamestate.new
        @board = Board.new
    end

    def computer_turn
        @ai.place_random(@board)
    end

    def human_turn(input)
        @board.place_cell("Human", input)
    end

    def check_winner(player)
        num = 0
        def count
            num += 1
            if num == 4
                return true
            end
        end
        
        # vertical
        board.columns.each do |column|
            column.cells.each do |cell|
                if cell.find_player_owner == player
                    count
                else
                    num = 0
                end
            end
            num = 0
        end

        # horizontal
        for x in 0..board.columns.length-1
            board.columns.each do |column|
                if column.cells[x].find_player_owner == player
                    count
                else
                    num = 0
                end
            end
            num = 0
        end

        # up diaganal
        # will do l8r

        # down diaganal
        # will do l8r

        false
    end
end