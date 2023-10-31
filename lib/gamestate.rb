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
  end 

end 