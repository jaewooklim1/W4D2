require_relative "./pieces/piece.rb"

class Board
    attr_reader :rows

    def initialize
        empty_piece = "_"
        fill_piece = "*"
        @grid = Array.new(8) { Array.new(8, empty_piece)}
    end

    def [](pos)
        row, col = pos
        @grid[row][col]
    end

    def []=(pos, piece)
        row, col = pos
        @grid[row][col] = piece
    end

    def move_piece(start_pos, end_pos)

        x, y = end_pos
        a, b = start_pos

        raise "there is no piece at start_pos" if @grid[a][b] == "_" || !valid_pos?(start_pos)
        
        raise "this piece cannot move to end_pos" if @grid[x][y] == "*" || !valid_pos?(end_pos)

        @grid[x][y] = "*" 
        @grid[a][b] = "_"

            #         [12] pry(main)> b.move_piece([10, 10], [3, 0])
            #           NoMethodError: undefined method `[]' for nil:NilClass
            #            from board.rb:28:in `move_piece'

    end

    def fill_piece
        (0...2).each do |row|
            (0...8).each do |col|
                @grid[row][col] = "*"
            end
        end

        (6...8).each do |row|
            (0...8).each do |col|
                @grid[row][col] = "*"
            end
        end
    end

    def valid_pos?(pos)
        x, y = pos
        (0..7).include?(x) && (0..7).include?(y)
    end



  


#     @rows=
#     [["_", "_", "_", "_", "_", "_", "_", "_"],
#      ["_", "_", "_", "_", "_", "_", "_", "_"],
#      ["_", "_", "_", "_", "_", "_", "_", "_"],
#      ["_", "_", "_", "_", "_", "_", "_", "_"],
#      ["_", "_", "_", "_", "_", "_", "_", "_"],
#      ["_", "_", "_", "_", "_", "_", "_", "_"],
#      ["_", "_", "_", "_", "_", "_", "_", "_"],
#      ["_", "_", "_", "_", "_", "_", "_", "_"]]>
#   [3] pry(main)> b.fill_piece
#   NoMethodError: undefined method `[]' for nil:NilClass
#   from board.rb:33:in `block (2 levels) in fill_piece'













end