# Produces a decimal output when given a binary input string.
class Binary
  BASE_TWO = 2
  BINARY_DIGITS = %w[0 1].freeze
  def self.to_decimal(num)
    num.chars.reverse.each_with_index.reduce(0) do |sum, (digit, idx)|
      raise ArgumentError.new("#{digit} is not a binary digit") unless BINARY_DIGITS.include?(digit)
      sum + digit.to_i * BASE_TWO**idx
    end
  end
end

module BookKeeping
  VERSION = 3
end
