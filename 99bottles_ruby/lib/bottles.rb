class Bottles
  attr_reader :verse_template

  def initialize(verse_template: BottleVerse)
    @verse_template = verse_template
  end

  def song
    verses(99,0)
  end

  def verses(upper, lower)
    upper.downto(lower).collect {|i| verse(i)}.join("\n")
  end

  def verse(number)
    verse_template.lyrics(number)
  end
end

class BottleNumber
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def self.for(number)
    case number
    when 0
      BottleNumber0
    when 1
      BottleNumber1
    when 6
      BottleNumber6
    else
      BottleNumber
    end.new(number)
  end

  def container
    "bottles"
  end

  def pronoun
    "one"
  end

  def number_representation
    number.to_s
  end

  def successor
    BottleNumber.for(number - 1)
  end

  def next_action
    "Take #{pronoun} down and pass it around"
  end

  def to_s
    "#{number_representation} #{container}"
  end
end

class BottleNumber0 < BottleNumber
  def number_representation
    "no more"
  end

  def successor
    BottleNumber.for(99)
  end

  def next_action
    "Go to the store and buy some more"
  end
end

class BottleNumber1 < BottleNumber
  def container
    "bottle"
  end

  def pronoun
    "it"
  end
end

class BottleNumber6 < BottleNumber
  def container
    "six-pack"
  end

  def number_representation
    1
  end
end

class BottleVerse
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def self.lyrics(number)
    new(number).lyrics
  end

  def lyrics
    bottle_number = BottleNumber.for(number)

    "#{bottle_number} ".capitalize +  "of beer on the wall, " +
    "#{bottle_number} of beer.\n" +
    "#{bottle_number.next_action}, " +
    "#{bottle_number.successor} of beer on the wall.\n"
  end
end