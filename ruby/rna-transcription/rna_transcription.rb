

class Complement

  TRANSCRIPTION_KEY = { "G" => "C", "C" => "G", "T" => "A", "A" => "U"}

  def self.of_dna(string)
    string.chars.collect do |nucleotide|
      return "" unless TRANSCRIPTION_KEY[nucleotide]
      TRANSCRIPTION_KEY[nucleotide]
      end.join("")
  end

end

module BookKeeping
  VERSION = 4
end
