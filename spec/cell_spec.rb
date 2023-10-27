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

  describe '#claim' do
    it 'claims the cell for a Human' do
      @cell.claim("Human")
      expect(@cell.player).to eq("X")
    end
    
    it 'claims a cell for a computer' do
      @cell.claim("Computer")
      expect(@cell.player).to eq("O")
    end

    it "does not change player when invalid input" do 
      @cell.claim("mmmm")
      expect(@cell.player).to eq("empty")
    end
  end
end