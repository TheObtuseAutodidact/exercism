class SumOfMultiples
  def initialize(*multiples)
    @multiples = multiples
  end

  def to(limit)
    sum = []
    (1...limit).each do |num|
      @multiples.each do |multiple|
        sum << num if (num % multiple).zero?
      end
    end
    sum.uniq.sum
  end
end

module BookKeeping
  VERSION = 1
end
