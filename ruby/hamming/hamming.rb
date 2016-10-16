class Hamming
  VERSION = 1
  def self.compute(strand_1, strand_2)
    raise ArgumentError,
      "Strands must be of equal length" if strand_1.length != strand_2.length
    strand_1.chars.zip(strand_2.chars).select { |k, v| k != v }.length
  end
end
