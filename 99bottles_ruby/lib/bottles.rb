class Bottles
  def song
    verses(99,0)
  end

  def verses(upper, lower)
    upper.downto(lower).collect {|i| verse(i)}.join("\n")
  end

  def verse(number)
    bottle_number = BottleNumber.new(number)
    next_bottle = BottleNumber.new(bottle_number.successor)

    "#{bottle_number.number_representation.capitalize} #{bottle_number.container} of beer on the wall, " +
    "#{bottle_number.number_representation} #{bottle_number.container} of beer.\n" +
    "#{bottle_number.next_action}, " +
    "#{next_bottle.number_representation} #{next_bottle.container} of beer on the wall.\n"
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
    if number == 0
      "no more"
    else
      number.to_s
    end
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
end