require_relative 'piece'
require_relative 'steppable'

class King < Piece
  include Steppable

  def symbol
    '♚'.colorize(color)
  end

  protected

  def move_diffs    
    [
      [1, 1], 
      [1, -1], 
      [-1, 1], 
      [-1, -1],
      [0,-1],
      [0, 1],
      [1, 0],
      [-1, 0]
    ]
  end
end