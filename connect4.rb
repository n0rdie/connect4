require './lib/gamestate'

class ConnectFourRunner
  def initialize
    @gamestate = Gamestate.new
  end

  def run
    puts "Welcome to CONNECT FOUR"
    loop do
      puts "Enter 'p' to play. Enter 'q' to quit."
      choice = gets.chomp.downcase

      case choice
      when 'p'
        play_game
      when 'q'
        puts "Goodbye!"
        break
      else
        puts "Invalid choice. Please enter 'p' to play or 'q' to quit."
      end
    end
  end

  

  def play_game
    @gamestate = Gamestate.new
    @gamestate.display
    loop do
      puts "Player's turn. Enter the column letter (A-G) to place your piece:"
      player_input = gets.chomp.upcase

      if @gamestate.human_turn(player_input)
        @gamestate.display
        break if game_over?('Human')
        puts "Computer's turn."
        @gamestate.computer_turn
        @gamestate.display
        break if game_over?('Computer')
      else
        puts "Invalid input. Please enter a valid column letter."
      end
    end

    #play_again?
  end
  
  
  def game_over?(player)
    if @gamestate.check_winner(player)
      puts "#{player} wins!"
      true
    elsif @gamestate.board.full?
      puts "It's a draw! The board is full."
      true
    else
      false
    end
  end

  #def play_again?
  #  puts "Do you want to play again? (Enter 'y' for yes, 'n' for no)"
  #  choice = gets.chomp.downcase
  #  choice == 'y'
  #end
end


ConnectFourRunner.new.run