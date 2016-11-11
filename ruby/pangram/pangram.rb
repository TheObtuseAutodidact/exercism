class Pangram
  def self.is_pangram?(str)
    ('a'..'z').to_a.reject do |letter|
      str.downcase.include?(letter)
    end.empty?
  end
end

module BookKeeping
  VERSION = 2
end
