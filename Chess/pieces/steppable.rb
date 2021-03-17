module Steppable
    def moves
        move = []
        

        move_diffs.each do |x,y|
        curr_x, curr_y = pos
        new_x, new_y = (x + curr_x), (y + curr_y)  
        new_pos = [new_x, new_y]
    
        while board.valid_pos?(new_pos)
            if board.empty?(new_pos) #&& board.valid_pos?(new_pos)
                moves << new_pos         
            elsif new_pos.color != board[pos].color
                moves << new_pos
            break
            end
        end

        move
    end
end

  private

    def move_diffs
    # subclass implements this
        raise NotImplementedError
    end
end

