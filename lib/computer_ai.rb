require './lib/cell'
require './lib/column'
require './lib/board'

class Computer_Ai
    def initialize
        true
    end

    def place_random(board)
        if board.full?
            false
        else
            finished = false
            while finished == false
                num = rand(0..board.columns.length-1)
                if board.columns[num].full? == false
                    board.columns[num].find_first_empty_cell.claim("Computer")
                    finished = true
                end
            end
            true
        end
    end
end