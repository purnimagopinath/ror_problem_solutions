# Given an m x n 2D binary grid grid which represents a map of '1's (land) and '0's (water), return the number of islands.

# An island is surrounded by water and is formed by connecting adjacent lands horizontally or vertically. You may assume all four edges of the grid are all surrounded by water.

 

# Example 1:

# Input: grid = [
#   ["1","1","1","1","0"],
#   ["1","1","0","1","0"],
#   ["1","1","0","0","0"],
#   ["0","0","0","0","0"]
# ]
# Output: 1
# Example 2:

# Input: grid = [
#   ["1","1","0","0","0"],
#   ["1","1","0","0","0"],
#   ["0","0","1","0","0"],
#   ["0","0","0","1","1"]
# ]
# Output: 3
 

# Constraints:

# m == grid.length
# n == grid[i].length
# 1 <= m, n <= 300
# grid[i][j] is '0' or '1'.

# @param {Character[][]} grid
# @return {Integer}
def num_islands(grid)
    count = 0
    grid.each_with_index do |sub, i|
        sub.each_with_index do |val, j|
            if val == '1'
                count+=1
                check_the_adjacent_islands(i,j,grid)
            end
        end
    end
   return count 
end

def check_the_adjacent_islands(i, j, grid)
    if ((i<grid.length) && (i>=0) && (j<grid.first.length) && (j>=0) && (grid[i][j]=='1'))
        grid[i][j] = "0"
        check_the_adjacent_islands(i+1, j,grid);
        check_the_adjacent_islands(i, j+1, grid);
        check_the_adjacent_islands(i-1, j, grid) ;
        check_the_adjacent_islands(i, j-1, grid) ;
    end
end
