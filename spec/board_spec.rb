require './lib/cell'
require './lib/column'
require './lib/board'

RSpec.describe Board do
    it 'can initialize' do
        board = Board.new
        expect(board.columns[6]).to be_a(Column)
    end

    it 'can calculate full?' do
        board = Board.new
        expect(board.full?).to eq(false)
        board.columns.each do |column|
            column.find_first_empty_cell.claim('Human')
            column.find_first_empty_cell.claim('Human')
            column.find_first_empty_cell.claim('Human')
            column.find_first_empty_cell.claim('Human')
            column.find_first_empty_cell.claim('Human')
            column.find_first_empty_cell.claim('Human')
        end
        expect(board.full?).to eq(true)
    end

    it 'can add in column' do
        board = Board.new
        
        expect(board.columns[0].cells[0].find_player_owner).to eq('empty')
        board.place_cell("Human", "A")
        expect(board.columns[0].cells[0].find_player_owner).to eq('Human')
    end
end