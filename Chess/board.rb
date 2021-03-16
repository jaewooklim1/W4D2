require_relative "./null_pieces.rb"
require_relative "./piece.rb"

class Board
    SETUP = [0, 0..(0, 7)]
    attr_reader :rows

    def initialize
        @rows = Array.new(8) { Array.new(8) }
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
        raise "there is no piece at start_pos" 
        raise "this piece cannot move to end_pos" 
    end
















end