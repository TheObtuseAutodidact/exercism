class BeerSong
  STANDARD = <<-TEXT
%<number>s bottles of beer on the wall, %<number>s bottles of beer.
Take one down and pass it around, %<number_less_one>s bottles of beer on the wall.
  TEXT
  TWO_BOTTLES = <<-TEXT
%<number>s bottles of beer on the wall, %<number>s bottles of beer.
Take one down and pass it around, %<number_less_one>s bottle of beer on the wall.
  TEXT

  ONE_BOTTLE = <<-TEXT
%<number>s bottle of beer on the wall, %<number>s bottle of beer.
Take it down and pass it around, no more bottles of beer on the wall.
  TEXT

  ZERO_BOTTLES = <<-TEXT
No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.
  TEXT

  def verse(number_of_bottles)
    text =
      case number_of_bottles
      when 3..99 then STANDARD
      when 2 then TWO_BOTTLES
      when 1 then ONE_BOTTLE
      when 0 then ZERO_BOTTLES
      end
    text % { number: number_of_bottles,
             number_less_one: (number_of_bottles - 1) % 100 }
  end

  def verses(x, y)
    x.downto(y).collect { |bottle_num| verse(bottle_num) }.join("\n")
  end
end

module BookKeeping
  VERSION = 3
end
