class BeerSong
  PHRASE_ONE = 'of beer on the wall'
  PHRASE_TWO = 'of beer.'
  TURN_AROUND = "No more bottles of beer on the wall, "\
                "no more bottles of beer.\n"\
                "Go to the store and buy some more, 99 bottles of beer on the wall.\n"

  def bottle_or_bottles(number_of_bottles)
    number_of_bottles == 1 ? 'bottle' : 'bottles'
  end

  def count_or_no_more(number_of_bottles)
    number_of_bottles.zero? ? 'no more' : number_of_bottles
  end

  def one_or_it(number_of_bottles)
    number_of_bottles == 1 ? 'it' : 'one'
  end

  def verse(number_of_bottles)
    if number_of_bottles > 0
      "#{count_or_no_more(number_of_bottles)} #{bottle_or_bottles(number_of_bottles)} "\
      "#{PHRASE_ONE}, #{count_or_no_more(number_of_bottles)} #{bottle_or_bottles(number_of_bottles)} "\
      "#{PHRASE_TWO}\n"\
      "Take #{one_or_it(number_of_bottles)} down and pass it around, "\
      "#{count_or_no_more(number_of_bottles - 1)} #{bottle_or_bottles(number_of_bottles - 1)} #{PHRASE_ONE}.\n"
    else
      TURN_AROUND
    end
  end

  def verses(x, y)
    x.downto(y).collect { |bottle_num| verse(bottle_num) }.join("\n")
  end
end

module BookKeeping
  VERSION = 3
end
