class Bottles
  def song
    verses(99,0)
  end

  def verses(upper, lower)
    upper.downto(lower).collect {|i| verse(i)}.join("\n")
  end

  def verse(number)
    "#{number_representation(number).capitalize} #{container(number)} of beer on the wall, " +
    "#{number_representation(number)} #{container(number)} of beer.\n" +
    "#{next_action(number)}, " +
    "#{number_representation(successor(number))} #{container(successor(number))} of beer on the wall.\n"
  end

  def container(number)
    BottleNumber.new(number).container(number)
  end

  def pronoun(number=:TODO)
    BottleNumber.new(number).pronoun(number)
  end

  def number_representation(number)
    BottleNumber.new(number).number_representation(number)
  end

  def successor(number)
    BottleNumber.new(number).successor(number)
  end

  def next_action(number=:TODO)
    BottleNumber.new(number).next_action(number)
  end
end

class BottleNumber
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def container(number)
    if number == 1
      "bottle"
    else
      "bottles"
    end
  end

  def pronoun(number=:TODO)
    if number == 1
      "it"
    else
      "one"
    end
  end

  def number_representation(number)
    if number == 0
      "no more"
    else
      number.to_s
    end
  end

  def successor(number)
    if number == 0
      99
    else
      number - 1
    end
  end

  def next_action(number=:TODO)
    if number == 0
      "Go to the store and buy some more"
    else
      "Take #{pronoun(number)} down and pass it around"
    end
  end
end