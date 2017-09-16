# Given a phrase, count the occurrences of each word in that phrase.
class Phrase
  def initialize(string_o_words)
    @words = split_and_sanitize_to_word_list(string_o_words)
  end

  def word_count
    @words.each_with_object(Hash.new(0)) { |word, my_hash| my_hash[word] += 1 }
  end

  private

  def strip_quotes(str)
    if (str.start_with?('\"') && str.end_with?('\"')) ||
       (str.start_with?('\'') && str.end_with?('\''))
      str = str[1..-2]
    end
    str
  end

  def split_word_list(str)
    str.gsub(/[^[:alnum:]']/, ' ')
  end

  def sanitize_word_list(str)
    str.split.collect { |word| strip_quotes(word).downcase }
  end

  def split_and_sanitize_to_word_list(str)
    sanitize_word_list(split_word_list(str))
  end
end

module BookKeeping
  VERSION = 1
end
