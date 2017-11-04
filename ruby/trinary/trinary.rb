class Trinary
  TRINARY_DIGITS = %w[0 1 2].freeze

  def initialize(num)
    @num = num
  end

  def to_decimal
    @num.reverse.chars.each_with_index.reduce(0) do |sum, (num, idx)|
      return 0 unless TRINARY_DIGITS.include?(num)
      sum + num.to_i * 3**idx
    end
  end
end

module BookKeeping
  VERSION = 1
end
