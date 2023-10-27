require '.lib/cell'

class Column
    attr_reader :cells, :full
    def initialize
        @cells = []
        @full = false
    end
end