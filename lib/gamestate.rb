require 'colorize'
require './lib/cell'
require './lib/column'
require './lib/board'
require './lib/computer_ai'

class Gamestate

    attr_reader :ai, :board
    def initialize
        @ai = Computer_Ai.new
        @board = Board.new
    end
  
    def display
        puts " A B C D E F G"
        puts "+----------------"
    
        (0..5).reverse_each do |row_index|
            row_string = "|"
            @board.columns.each do |column|
                cell = column.cells[row_index]
                row_string += "#{cell_display_value(cell)} "
            end 
            # require 'pry'; binding.pry
            puts "#{row_string}|"
        end
        puts "+----------------"
        puts "Player pieces are represented by X's, and computer pieces are represented by O's."
    end 
  
    def cell_display_value(cell)
        cell.player == 'empty' ? '.' :cell.player
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
        for x in 0..@board.columns.length-1
            board.columns.each do |column|
                if column.cells[x].find_player_owner == player
                    count
                else
                    num = 0
                end
            end
            num = 0
        end

        # down diaganal
        for x in 0..board.columns.length-4
            for y in 0..board.columns[x].cells.length-4
                if board.columns[x].cells[y].find_player_owner == player
                    if board.columns[x+1].cells[y+1].find_player_owner == player
                        if board.columns[x+2].cells[y+2].find_player_owner == player
                            if board.columns[x+3].cells[y+3].find_player_owner == player
                                return true
                            end
                        end
                    end
                end
            end
        end

        # up diaganal
        for x in 0..board.columns.length-4
            for y in 3..board.columns[x].cells.length-1
                if board.columns[x].cells[y].find_player_owner == player
                    if board.columns[x+1].cells[y-1].find_player_owner == player
                        if board.columns[x+2].cells[y-2].find_player_owner == player
                            if board.columns[x+3].cells[y-3].find_player_owner == player
                                return true
                            end
                        end
                    end
                end
            end
        end
        
        false
    end
end