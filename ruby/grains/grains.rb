class Grains

  SQUARE_MAX = 64
  SQUARE_MIN = 1

  def self.square(num)
    if !(SQUARE_MIN..SQUARE_MAX).include?(num)
      raise ArgumentError.new("Out of Range: Valid range [1 to 64] inclusive")
    end 
    2**(num-1)
  end

  def self.total
    (SQUARE_MIN..SQUARE_MAX).reduce { |sum, num| sum += square(num) }
  end

end

module BookKeeping
  VERSION = 1
end