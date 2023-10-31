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
      @board.columns.cells[row_index]
      row_string += "#{cell_display_value(cell)} "
      require 'pry'; binding.pry
    end
  end 

end 