class RunLengthEncoding
  def self.encode(str)
    encoded_str = ''
    letter_count = 1
    str.length.times do |i|
      if str[i] == str[i + 1]
        letter_count += 1
      else
        encoded_str += letter_count.to_s if letter_count > 1
        encoded_str += str[i]
        letter_count = 1
      end
    end
    encoded_str
  end

  def self.decode(str)
    decoded_str = ''
    number_of_letters = ''
    str.length.times do |i|
      if str[i].to_i.to_s == str[i]
        number_of_letters += str[i]
      else
        if number_of_letters.empty?
          decoded_str += str[i]
        else
          decoded_str += str[i] * number_of_letters.to_i
          number_of_letters = ''
        end
      end
    end
    decoded_str
  end
end

module BookKeeping
  VERSION = 3
end
