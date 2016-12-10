module RomanNumerals
  {'1': 'I', '4': 'IV', '5': 'V', '9': 'IX', '10': 'X'}
  def to_roman
    thousands = self / 1000
    five_hundreds = (self % 1000) / 500
    hundreds = (self % 500) / 100
    fifties = (self % 100) / 50
    tens = (self % 50) / 10
    # fives = (self % 10) / 5
    ones =  (self % 10)
    string = ""
    string += construct_thousands(thousands)
    string += construct_five_hundreds(five_hundreds)
    string += construct_hundreds(hundreds)
    stirng += construct_fifties(fifties)
    string += construct_tens(tens)
    string += construct_ones(ones)

  end

  private
    def construct_thousands(thousands)
      if thousands > 0
          "M" * thousands
      # else
      #   ""
      end
    end

    def construct_five_hundreds(five_hundreds)
      if five_hundreds > 0
        'D' * five_hundreds
      else
        ""
      end
    end

    def construct_hundreds(hundreds)
      if hundreds > 0
        if hundreds == 9
          'CM'
        elsif (6..8).include?(hundreds)
          hundreds -= 5
          'D' + ('C' * hundreds)
        elsif hundreds = 4
          'CD'
        elsif (1..3).include?(hundreds)
          'C' * hundreds
        end
      else
        ""
      end
    end

    def construct_fifties(fifties)
      puts fifties
      if fifties > 0
        'L'
      else
        ""
      end
    end

    def construct_tens(tens)
      if tens > 0
        if tens == 9
          'XC'
        elsif (6..8).include?(tens)
          'L' + ('X' * tens)
        elsif tens == 4
          'XL'
        elsif (1..3).include?(tens)
          'X' * tens
        else
          ""
        end
      end
    end

    def construct_ones(ones)
      if ones == 9
        'IX'
      elsif (6..8).include?(ones)
        'V' + ('I' * ones)
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
