class Squares
  def initialize(n)
    @base_num = n
  end

  def base_num
    @base_num
  end

  def square_of_sum
    ((1..self.base_num).reduce(:+) || 0)**2
  end

  def sum_of_squares
    (1..self.base_num).reduce { |sum, i| sum += i**2 } || 0
  end

  def difference
    self.square_of_sum - self.sum_of_squares
  end
end

module BookKeeping
  VERSION = 3
end
