require '.lib/cell'

class Column
    attr_reader :cells, :full
    def initialize
        @cells = []
        @full = false
        fill_cells
    end

    def fill_cells
        6.times do
            @cells.append(Cell.new)
        end
    end

    def full?
        if @cells[-1].empty? == false
            @full = true
        end
        @full
    end

    def find_first_empty_cell
        if full?
            nil
        else
            first_empty_cell = nil
            @cells.reverse_each do |cell|
                if cell.empty?
                    first_empty_cell = cell
                end
            end
            first_empty_cell
        end
    end
end