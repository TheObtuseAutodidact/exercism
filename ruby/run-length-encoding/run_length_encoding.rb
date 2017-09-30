class RunLengthEncoding
  def self.encode(str)
    str.chars.chunk_while { |a, b| a == b }.map(&:join).collect do |subset|
      subset.length > 1 ? subset.length.to_s + subset.chr : subset.chr
    end.join
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
