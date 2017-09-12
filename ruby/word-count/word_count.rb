class Phrase
    def initialize(words)
        @words = words
    end

    def word_count
        word_count_hash = Hash.new(0)
        words = @words.gsub(/[^[:alnum:]']/, " ")
        words.split().each do |word|
            if word[0] == word[-1] &&
                word[0] == "\"" || word[0] == "\'"
                word = word[1..-2]
            end
            word_count_hash[word.downcase] += 1
        end
        word_count_hash
    end
end

module BookKeeping
    VERSION = 1
end