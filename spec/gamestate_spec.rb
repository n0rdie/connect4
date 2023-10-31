require 'colorize'
require './lib/cell'
require './lib/column'
require './lib/board'
require './lib/gamestate'

RSpec.describe Gamestate do

    it "can do human turn"
        gamestate = Gamestate.new
        expect(Gamestate.board.columns[0].cells[0].find_player_owner).to eq("empty")
        gamestate.human_turn("A")
        expect(Gamestate.board.columns[0].cells[0].find_player_owner).to eq("Human")
    end

    it "can do computer turn"
        gamestate = Gamestate.new
        gamestate.computer_turn
        
        passed = false
        board.columns.each do |column|
            if column.cells[0].find_player_owner == "Computer"
                passed = true
            end
        end
        expect(passed).to eq(true)
    end
end

  before(:each) do
    gamestate = Gamestate.new
  end
  
  describe '#initialize' do
    it 'exists' do
      gamestate = Gamestate.new
      expect(gamestate).to be_a(Gamestate)
    end
  end 

  describe '#display' do
    it 'displays a board' do
      gamestate = Gamestate.new
      gamestate.display
    end
  end
end


