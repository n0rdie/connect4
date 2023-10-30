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
  
    def claim(player_input)
      if player_input == "Human"
        @player = "X"
      elsif player_input == "Computer"
       @player = 'O'
      end
    end
    
  end