# Given an array of NxN, print its diagonals from top-left to bottom-right.

# Sample: 
# input = [[1, 2, 3],
#          [4, 5, 6],
#          [7, 8, 9]]

# Output: 1, 2, 4, 3, 5, 7, 6, 8, 9


class Array
  def diagonals
    high_value = 3
    for index in 0..(high_value + 1)
      second_index = index < high_value ? 0 : index - high_value + 1
      for j in second_index..(index - second_index)
        print "#{self[j][index - j]} "
      end
    end
    print "\n"
  end
end

[[1, 2, 3],[4, 5, 6],[7, 8, 9]].diagonals
