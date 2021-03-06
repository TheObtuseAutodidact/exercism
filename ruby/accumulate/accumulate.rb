module Enumerable
  def accumulate
    return enum_for(:accumulate) { size } unless block_given?

    each_with_object([]) do |item, arr|
      arr << yield(item)
    end
  end
end

module BookKeeping
  VERSION = 1
end
