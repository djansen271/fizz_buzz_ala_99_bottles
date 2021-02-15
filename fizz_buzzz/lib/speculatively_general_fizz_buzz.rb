class SpeculativelyGeneralFizzBuzz
  Fizz = lambda { |n| 'Fizz' }
  Buzz = lambda { |n| 'Buzz' }
  FizzBuzz = lambda { |n| 'FizzBuzz' }
  Num = lambda { |n| n.number.to_s }

  def single_verse(n)
    verse_for(n).text
  end

  def verses(starting,ending)
    (starting..ending).map{ |n| single_verse(n) }
  end

  def song
    verses(1,100)
  end

  def verse_for(n)
    case
    when n % 15 == 0
      Verse.new(n, &FizzBuzz)
    when n % 3 == 0
      Verse.new(n, &Fizz)
    when n % 5 == 0
      Verse.new(n, &Buzz)
    else
      Verse.new(n, &Num)
    end
  end
end

class Verse
  attr_reader :number

  def initialize(number, &answer)
    @number = number
    @answer = answer
  end

  def text
    @answer.call self
  end
end