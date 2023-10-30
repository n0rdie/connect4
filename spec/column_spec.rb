require './lib/cell'
require './lib/column'
RSpec.describe Column do
    it 'can initialize' do
        column = Column.new
        expect(column.cells[5]).to be_a(Cell)
    end

    it 'can fill cell' do
        column = Column.new
        expect(column.cells[0].find_player_owner).to eq("empty")
        column.find_first_empty_cell.claim('Human')
        expect(column.cells[0].find_player_owner).to eq("Human")
    end

    it 'can calcuate full?' do
        column = Column.new
        expect(column.full?).to eq(false)
        column.find_first_empty_cell.claim('Human')
        expect(column.full?).to eq(false)
        column.find_first_empty_cell.claim('Human')
        expect(column.full?).to eq(false)
        column.find_first_empty_cell.claim('Human')
        expect(column.full?).to eq(false)
        column.find_first_empty_cell.claim('Human')
        expect(column.full?).to eq(false)
        column.find_first_empty_cell.claim('Human')
        expect(column.full?).to eq(false)
        column.find_first_empty_cell.claim('Human')
        expect(column.full?).to eq(true)
    end
end