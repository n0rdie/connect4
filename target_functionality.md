- CLASS FUCTIONALITY GOALS
- ##########################

- Cell.player return value
- Empty Cell = "empty"
- Player Cell = "player"
- Computer Cell = "computer"

1. Cell
- Variables: @player (string)
- Methods: .empty? (bool), .player? (string), .claim (changes @player)

2. Column
- Variables: @cells (array), @full (bool)
- Methods: .find_frist_open_cell (cell), full? (bool)

3. Board
- Variables: @columns (array), @full (bool)
- Methods: .place_cell(column_number) (fills column and makes sure that called collumn is in board), .full? (bool)

4. Gamstate
- Variables: 
- Methods: .display_board, .player_turn, .computer_turn

5. Computer AI
- Variables: 
- Methods: 