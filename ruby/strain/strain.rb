module Enumerable
  def keep
    each_with_object([]) do |item, keepers|
      keepers << item if yield(item)
    end
  end

  def discard
    each_with_object([]) do |item, keepers|
      keepers << item unless yield(item)
    end
  end
end
