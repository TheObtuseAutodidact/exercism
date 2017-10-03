# a simple form of data compression, where runs
# (consecutive data elements) are replaced by just one data value and count
class RunLengthEncoding
  def self.encode(str)
    str.chars.chunk_while { |a, b| a == b }
    .map(&:join)
    .collect { |str| str.length > 1 ? str.length.to_s + str.chr : str.chr }
    .join
  end

  def self.decode(str)
    str.scan(/.*?[a-zA-Z ]/)
    .collect { |char| char.length == 1 ? char : char[-1] * char[0..-2].to_i }
    .join
  end
end

module BookKeeping
  VERSION = 3
end
