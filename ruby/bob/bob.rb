# Bob is a lackadaisical teenager. His responses are very limited.
class Bob
  RESPONSES = ['Sure.',
               'Whoa, chill out!',
               'Fine. Be that way!',
               'Whatever.'].freeze

  def self.hey(remark)
    stripped_remark = remark.strip
    if stripped_remark == stripped_remark.upcase &&
       stripped_remark.upcase != stripped_remark.downcase # checks for letters
      return RESPONSES[1]
    elsif stripped_remark.end_with?('?')
      return RESPONSES[0]
    elsif stripped_remark == ''
      return RESPONSES[2]
    end
    RESPONSES[3]
  end
end

module BookKeeping
  VERSION = 1
end
