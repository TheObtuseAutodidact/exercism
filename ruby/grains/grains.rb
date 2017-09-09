class Grains

    def self.square(num)
        raise ArgumentError.new("Out of Range") if num > 64 || num < 1
        2**(num-1)
    end

    def self.total
        (1..64).reduce { |sum, num| sum += square(num) }
    end

end

module BookKeeping
    VERSION = 1
end