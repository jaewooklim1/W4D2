module Slidable
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

    def horizonal_and_vertiacal_dirs
        HORIZONTAL_AND_VERTICAL_DIRS
    end

    def diagonal_dirs
        DIAGONAL_DIRS
    end

    def move    #holds total array
        moves = [] # all_possible moves
        move_dirs.each do |x,y|
            movves << grow_unblocked_move_in_dir(x,y) 
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
        new_x, new_y = (x + dx), (y +dy)  
        new_pos = (new_x, new_y)
    
        if (new_pos)board.empty? && valid_pos(new_pos)
            moves << new_pos
        elsif !valid_pos(new_pos)
            break
        else
            if new_pos.color != board.pos.color
                possible_moves << new_pos
            end
        end

        possible_moves
    end
    #     end
    # #     increment piece's current row and by dx dy to generate new position
    # if the new positions
    #     1. goes off board
    #         -stop looping: dont add
    #     2.empty spot
    #         -keep looping, add position to array
    #     3. occupied spot
    #         - stop looping
    #         - if opposite color, add position to moves array
    #         - if same color, ignore positon
    # return final array
    # end

end

module Test
    def move
        p self
    end
end

class Super
    def initialize
        @name = "toy"
    end
end

class Toy < Super
    include Test
end


