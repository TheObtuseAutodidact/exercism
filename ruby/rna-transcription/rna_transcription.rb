# Given a DNA strand(String), returns its RNA complement(String)
class Complement
  DNA_TO_RNA = { 'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U' }.freeze

  def self.of_dna(string)
    string.chars.collect do |nucleotide|
      return '' unless DNA_TO_RNA[nucleotide]
      DNA_TO_RNA[nucleotide]
    end.join
  end
end

module BookKeeping
  VERSION = 4
end
