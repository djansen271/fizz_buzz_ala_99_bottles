class IncomprehensiblyConciseFizzBuzz
  def single_verse(n)
    (n % 15 == 0) ? 'FizzBuzz' : (n % 3 == 0 ? 'Fizz' : (n % 5 == 0 ? 'Buzz' : n.to_s))
  end

  def verses(_,_)
  end

  def song
  end
end

