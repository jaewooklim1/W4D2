require_relative 'piece'

class King < Piece  

  def symbol
    '♟'.colorize(color)
  end

  def moves

    forward_steps + side_attacks

  end

  private

  def at_start_row?
    grid[1] if color == white
    grid[6] if color == black
    
  end

  def move_forward_dir

    [1, 0] if color == white
    [-1, 0] if color == black

  end

  def forward_steps

    x, y = pos
    moves = []

    one_step = x + move_forward_dir, y
    two_step = x + 2 * move_forward_dir, y

        if board.empty?(one_step) && board.valid_pos?(one_step)
            if at_start_row? && board.empty?(two_step) && board.valid_pos?(two_step)            
                moves << two_step
            else    
                moves << one_step
            end
        end

        moves
    end

    


  end

  def side_attacks
    x, y = pos
    
    possible_attacks = [[x + move_forward_dir, y - 1], [x + move_forward_dir, y + 1]]
    
    possible_attacks.select do |enemy|
        if board.valid_pos?(enemy) && enemy.color != color && !board.empty?(enemy)
            new_pos = board[enemy]
        end
    end

  end
   
end