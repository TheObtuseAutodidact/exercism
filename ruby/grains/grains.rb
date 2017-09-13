class Grains

  VALID_SQUARE_RANGE = (1..64)


  def self.square(num)
    fail_if_out_of_range(num)
    2**(num-1)
  end

  def self.total
    (VALID_SQUARE_RANGE).reduce { |sum, num| sum += square(num) }
  end

  def self.fail_if_out_of_range(num)
    unless (VALID_SQUARE_RANGE).include?(num)
      raise OffBoardError.new(
        "Out of Range:" +
        "Valid range [#{VALID_SQUARE_RANGE.min} to " +
        "#{VALID_SQUARE_RANGE.max}] inclusive"
      )
    end
  end

end

class OffBoardError < ArgumentError
end

module BookKeeping
  VERSION = 1
end
