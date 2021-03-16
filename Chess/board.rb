require_relative "./null_pieces.rb"
require_relative "./piece.rb"

class Board
    attr_reader :rows

    def initialize
        empty_piece = "_"
        fill_piece = "*"
        @rows = Array.new(8) { Array.new(8, empty_piece)}
    end

    def [](pos)
        row, col = pos
        @rows[row][col]
    end

    def []=(pos, piece)
        row, col = pos
        @rows[row][col] = piece
    end

    def move_piece(start_pos, end_pos)
        raise "there is no piece at start_pos" if self.start_pos.empty?
        
        raise "this piece cannot move to end_pos" if !self.end_pos.empty?

    end

    def fill_piece
        (0...2).each do |row|
            (0...8).each do |col|
                @row[row][col] = fill_piece
            end
        end

        (6...8).each do |row|
            (0...8).each do |row|
                @row[row][col] = fill_piece
            end
        end
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