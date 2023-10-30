require './lib/cell'
require './lib/column'
require './lib/board'
require './lib/gamestate'
require './lib/computer_ai'

RSpec.describe Computer_Ai do
    it "can place random" do
        ai = Computer_Ai.new
        board = Board.new
        ai.place_random(board)

        passed = false
        board.columns.each do |column|
            if column.cells[0].find_player_owner == "Computer"
                passed = true
            end
        end
        expect(passed).to eq(true)
    end
end