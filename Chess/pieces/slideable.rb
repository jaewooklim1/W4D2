module Slideable
    HORIZONTAL_AND_VERTICAL_DIRS = [
        [0,-1],
        [0, 1],
        [1, 0],
        [-1, 0]
    ].freeze

    DIAGONAL_DIRS = [
        [1, 1], 
        [1, -1], 
        [-1, 1], 
        [-1, -1]
    ].freeze

    def horizonal_and_vertical_dirs
        HORIZONTAL_AND_VERTICAL_DIRS
    end

    def diagonal_dirs
        DIAGONAL_DIRS
    end

    def moves    #holds total array
        moves = [] # all_possible moves
        move_dirs.each do |x, y|
            moves << grow_unblocked_move_in_dir(x,y) 
        end

        moves
    end
#horizonatal_dir & diagonal_dirs getters 
#helper method to generate move set of all 
# diagonal
# [1,1], [1,-1], [-1,1] [-1,-1]
# horizonal/vertical
# [(0...8),y] or [x,(0...8)]

    private
    def move_dirs   #accounts for move and grow methods
        raise NotImplementedError
    end

    def grow_unblocked_move_in_dir(dx,dy) 
        possible_moves = []

        x, y = pos
        new_x, new_y = (x + dx), (y + dy)  
        new_pos = [new_x, new_y]
    
        while board.valid_pos?(new_pos)
            if board.empty?(new_pos) #&& board.valid_pos?(new_pos)
                possible_moves << new_pos         
            elsif new_pos.color != board[pos].color
                possible_moves << new_pos
            break
            end
        end
        # end
        
        possible_moves
    end
end



