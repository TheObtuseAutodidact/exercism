class Array
    def accumulate
        each_with_object([]) do |item, arr|
            arr << yield(item)
        end
    end
end

module BookKeeping
    VERSION = 1
end