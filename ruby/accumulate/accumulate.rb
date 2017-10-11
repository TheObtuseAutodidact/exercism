class Array
  def accumulate
    unless block_given?
      return Enumerator.new(length) do |y|
        a = b = 1
        loop do
          y << a
          a, b = b, a + b
        end
      end
    end

    each_with_object([]) do |item, arr|
      arr << yield(item)
    end
  end
end

module BookKeeping
  VERSION = 1
end
