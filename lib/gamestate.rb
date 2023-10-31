require 'colorize'
require './lib/cell'
require './lib/column'
require './lib/board'

class Gamestate
  attr_reader :board

  def initialize
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
  end 
  
  def cell_display_value(cell)
    cell.player == 'empty' ? '.' :cell.player
  end
end 