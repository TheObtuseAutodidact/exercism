module RomanNumerals

  {'1': 'I', '4': 'IV', '5': 'V', '9': 'IX', '10': 'X'}
  def to_roman
    thousands = self / 1000
    hundreds = (self % 1000) / 100
    tens = (self % 100) / 10
    ones =  (self % 10)
    
    string = ""
    string += construct_thousands(thousands)
    string += construct_hundreds(hundreds)
    string += construct_tens(tens)
    string += construct_ones(ones)

  end

  private
    def construct_thousands(thousands)
      if thousands > 0
          "M" * thousands
      else
        ""
      end
    end

    def construct_hundreds(hundreds)
      if hundreds > 0
        if hundreds == 9
          'CM'
        elsif (5..8).include?(hundreds)
          hundreds -= 5
          'D' + ('C' * hundreds)
        elsif hundreds == 4
          'CD'
        elsif (1..3).include?(hundreds)
          'C' * hundreds
        end
      else
        ""
      end
    end

    def construct_tens(tens)
      if tens > 0
        if tens == 9
          'XC'
        elsif (5..8).include?(tens)
          'L' + ('X' * (tens - 5))
        elsif tens == 4
          'XL'
        elsif (1..3).include?(tens)
          'X' * tens
        end
      else
        ""
      end
    end

    def construct_ones(ones)
      if ones == 9
        'IX'
      elsif (6..8).include?(ones)
        'V' + ('I' * (ones - 5))
      elsif ones == 5
        'V'
      elsif ones == 4
        'IV'
      elsif (1..3).include?(ones)
        'I' * ones
      else
        ""
      end
    end



end

class Integer
  include RomanNumerals
end

module BookKeeping
  VERSION = 2
end
