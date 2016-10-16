class Hamming
  VERSION = 3
  def self.compute(strand1, strand2)
    raise ArgumentError,
      "Strands must be of equal length" unless strand1.length == strand2.length
    strand1.chars.zip(strand2.chars).select { |n1, n2| n1 != n2 }.count
  end
end
