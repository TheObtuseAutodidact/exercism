class Squares
  def initialize(n)
    @base_number = n
  end

  def base_number
    @base_number
  end

  def square_of_sum
    ((1..base_number).reduce(:+) || 0)**2
  end

  def sum_of_squares
    (1..base_number).reduce { |sum, i| sum += i**2 } || 0
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

module BookKeeping
  VERSION = 3
end
