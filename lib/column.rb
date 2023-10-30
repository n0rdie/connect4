require './lib/cell'

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

    def find_first_empty_cell # returns index
        if full?
            nil
        else
            #first_empty_cell = nil
            first_empty_cell_index = nil
            @cells.to_enum.with_index.reverse_each do |cell, index|
                if cell.empty?
                    #first_empty_cell = cell
                    first_empty_cell_index = cell
                end
            end
            #first_empty_cell
            first_empty_cell_index
        end
    end
end