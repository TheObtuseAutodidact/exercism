class BeerSong
  STANDARD = <<~TEXT
    %<number>s %<bottle_or_bottles_before>s of beer on the wall, %<number>s %<bottle_or_bottles_before>s of beer.
    Take %<one_or_it>s down and pass it around, %<number_less_one>s %<bottle_or_bottles_after>s of beer on the wall.
    TEXT

  ZERO_BOTTLES = <<~TEXT
    No more bottles of beer on the wall, no more bottles of beer.
    Go to the store and buy some more, 99 bottles of beer on the wall.
    TEXT

  def verse(number_of_bottles)
    if (1..99).include?(number_of_bottles)
      text = STANDARD
    elsif number_of_bottles.zero?
      text = ZERO_BOTTLES
    end
    text % { number: number_of_bottles,
             number_less_one: number_less_one(number_of_bottles),
             bottle_or_bottles_before: bottle_or_bottles(number_of_bottles),
             bottle_or_bottles_after: bottle_or_bottles(number_of_bottles - 1),
             one_or_it: one_or_it(number_of_bottles) }
  end

  def verses(x, y)
    x.downto(y).collect { |bottle_num| verse(bottle_num) }.join("\n")
  end

  private
  def bottle_or_bottles(number_of_bottles)
    number_of_bottles == 1 ? "bottle" : "bottles"
  end

  def one_or_it(number_of_bottles)
    number_of_bottles == 1 ? "it" : "one"
  end

  def number_less_one(number_of_bottles)
    (number_of_bottles - 1) % 100 > 0 ? number_of_bottles - 1 : "no more"
  end
end

module BookKeeping
  VERSION = 3
end
