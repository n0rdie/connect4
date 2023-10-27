class Cell 
  attr_reader :player 
  def initialize
    @player = nil
  end

  def empty?
    @player == nil 
  end
end