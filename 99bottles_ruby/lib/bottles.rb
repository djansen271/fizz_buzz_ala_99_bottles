class Bottles
  def song
    verses(99,0)
  end

  def verses(upper, lower)
    upper.downto(lower).collect {|i| verse(i)}.join("\n")
  end

  def verse(number)
    case number
    when 0
      "#{number_representation(number).capitalize} bottles of beer on the wall, " +
      "#{number_representation(number)} bottles of beer.\n" +
      "Go to the store and buy some more, " +
      "#{successor(number)} bottles of beer on the wall.\n"
    else
      "#{number} #{container(number)} of beer on the wall, " +
      "#{number} #{container(number)} of beer.\n" +
      "Take #{pronoun(number)} down and pass it around, " +
      "#{number_representation(successor(number))} #{container(number - 1)} of beer on the wall.\n"
    end
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
      number
    end
  end

  def successor(number)
    if number == 0
      99
    else
      number - 1
    end
  end
end