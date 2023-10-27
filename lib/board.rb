require '.lib/cell'
require '.lib/column'

class Board
    attr_reader :columns, :full
    def initialize
        @columns = []
        @full = false
    end
end