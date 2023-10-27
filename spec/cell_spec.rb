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
end