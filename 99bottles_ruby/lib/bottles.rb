class Bottles
  def song
    verses(99,0)
  end

  def verses(upper, lower)
    upper.downto(lower).collect {|i| verse(i)}.join("\n")
  end

  def verse(number)
    bottle_number = bottle_number_for(number)
    next_bottle = bottle_number_for(bottle_number.successor)

    "#{bottle_number} ".capitalize +  "of beer on the wall, " +
    "#{bottle_number} of beer.\n" +
    "#{bottle_number.next_action}, " +
    "#{next_bottle} of beer on the wall.\n"
  end

  def bottle_number_for(number)
    if number == 0
      BottleNumber0
    else
      BottleNumber
    end.new(number)
  end
end

class BottleNumber
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def container
    if number == 1
      "bottle"
    else
      "bottles"
    end
  end

  def pronoun
    if number == 1
      "it"
    else
      "one"
    end
  end

  def number_representation
    number.to_s
  end

  def successor
    if number == 0
      99
    else
      number - 1
    end
  end

  def next_action
    if number == 0
      "Go to the store and buy some more"
    else
      "Take #{pronoun} down and pass it around"
    end
  end

  def to_s
    "#{number_representation} #{container}"
  end
end

class BottleNumber0 < BottleNumber
  def number_representation
      "no more"
  end
end