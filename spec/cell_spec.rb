require "./lib/cell"

RSpec.describe Cell do
  before(:each) do
    @cell = Cell.new
  end

  describe '#initialize' do
    it 'exists' do
      expect(@cell).to be_a(Cell)
    end
  end

  describe '#empty?' do
    it 'checks that its empty' do
      expect(@cell.player).to eq("empty")
      expect(@cell.empty?).to eq(true)
    end
  end
end