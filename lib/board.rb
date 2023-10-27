require '.lib/cell'
require '.lib/column'

class Board
    attr_reader :columns, :full
    def initialize
        @columns = []
        @full = false
    end

    def full?
        num_full_columns = 0
        @columns.each do |column|
            if column.full?
                num_full_columns += 1
            end
        end
        if num_full_columns == @columns.length
            @full = true
        else 
            @full = false
        end
    end

    def place_cell(column_letter, inputer)
        column_number = nil
        if column_letter == "A" || column_letter == "a" # coverts letter into board index
            column_number = 0
        elsif column_letter == "B" || column_letter == "b"
            column_number = 1
        elsif column_letter == "C" || column_letter == "c"
            column_number = 2
        elsif column_letter == "D" || column_letter == "d"
            column_number = 3
        elsif column_letter == "E" || column_letter == "e"
            column_number = 4
        elsif column_letter == "F" || column_letter == "f"
            column_number = 5
        elsif column_letter == "G" || column_letter == "g"
            column_number = 6
        end

        if column_number == nil # checks to see if letter was in range (A-G)
            false
        else
            column = @columns[column_number]
            if column.full? == false
                false
            else
                column[column.find_first_empty_cell].claim(inputer)

                if column[column.find_first_empty_cell].player? == inputer then # final check
                    true
                else
                    false
                end
            end
        end
    end
end