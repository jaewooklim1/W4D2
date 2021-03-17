require "singleton"
require_relative "piece"

class Nullpiece < Piece
    include Singleton
    attr_reader :symbol

    def initialize
        @symbol = " "
    end

    def moves
        []
    end


end