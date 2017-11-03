class ETL
  def self.transform(data)
    scores = {}
    data.each do |score, letters|
      letters.each { |letter| scores[letter.downcase] = score }
    end
    scores
  end
end

module BookKeeping
  VERSION = 1
end
