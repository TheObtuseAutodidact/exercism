# Calculate the number of grains of wheat on a chessboard
# given that the number on each square doubles.
class Grains
  VALID_SQUARE_RANGE = (1..64)

  def self.square(num)
    fail_if_out_of_range(num)
    2**(num - 1) # Minus 1 for zero-indexing
  end

  def self.total
    VALID_SQUARE_RANGE.reduce { |sum, num| sum + square(num) }
  end

  private_class_method
  def self.fail_if_out_of_range(num)
    unless VALID_SQUARE_RANGE.include?(num)
      raise OffBoardError.new(VALID_SQUARE_RANGE, num)
    end
  end
end

# Arguments outside of Board raise OffBoardError
class OffBoardError < ArgumentError
  def initialize(board_range, num)
    @board_range = board_range
    @num = num
  end

  def message
    "#{@num} Out of Range: Valid range #{@board_range} (inclusive)"
  end
end

module BookKeeping
  VERSION = 1
end
