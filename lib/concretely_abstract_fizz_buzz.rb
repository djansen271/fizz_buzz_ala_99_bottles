class ConcretelyAbstractFizzBuzz
  def single_verse(n)
    Answer.new(n).to_s
  end

  def verses(starting,ending)
    (starting..ending).map{ |n| single_verse(n) }
  end

  def song
    verses(1,100)
  end
end

class Answer
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def to_s
    fizz + buzz + num
  end

  def fizz
    number % 3 == 0 ? 'Fizz' : ''
  end

  def buzz
    number % 5 == 0 ? 'Buzz' : ''
  end

  def num
    (number % 3 != 0 && number % 5 != 0) ? number.to_s : ''
  end
end
