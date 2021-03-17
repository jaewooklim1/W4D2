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

        x, y = current_pos
        new_pos = dx, dy
        newPos = HORIZONTAL_AND_VERTICAL_DIRS.dup    
        
        #[(0...8),y] or [x,(0...8)]
        HORIZONTAL_AND_VERTICAL_DIRS.each do |move|
            newPos[0] += move[0][0]
            newPos[1] += move[0][1]
            possible_moves << newPos
            
        end
        possible_moves
    end


    #     end
    #     while new


    #     end
    # #     increment piece's current row and by dx dy to generate new position
    # if the new positions
    #     1. goes off board
    #         -stop looping: dont add
    #     2.empty spot
    #         -keepy looping, add position to array
    #     3. occupied spot
    #         - stop looping
    #         - if opposite color, add position to moves array
    #         - if same color, ignore positon
    # return final array
    # end

end