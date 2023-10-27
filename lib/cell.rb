class Cell 
  attr_reader :player 
  def initialize
    @player = "empty"
  end

  def empty?
    @player == "empty"
  end

  def find_player_owner
    if @player == "empty"
      "empty"
    elsif @player == "X" 
      "Human"
    elsif @player == "O"
      "Computer"
    end 
  end 
  
end