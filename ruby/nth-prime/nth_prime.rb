require 'prime'

class Prime
    def self.nth(num)
        raise ArgumentError.new("Enter a number greater than 1") unless num > 0
      Prime.first(num).last
    end
end

module BookKeeping
    VERSION = 1
  end