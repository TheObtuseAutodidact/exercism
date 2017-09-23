# Given a DNA strand(String), returns its RNA complement(String)
class Complement
  DNA_TO_RNA = { 'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U' }.freeze

  def self.of_dna(string)
    # check for invalid nucleotdes
    return '' if string[/[^#{DNA_TO_RNA.keys.join}]/]
    string.chars.collect do |nucleotide|
      DNA_TO_RNA[nucleotide]
    end.join
  end
end

module BookKeeping
  VERSION = 4
end
