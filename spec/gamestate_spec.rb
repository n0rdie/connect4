require 'colorize'
require './lib/cell'
require './lib/column'
require './lib/board'
require './lib/gamestate'

RSpec.describe Gamestate do
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

