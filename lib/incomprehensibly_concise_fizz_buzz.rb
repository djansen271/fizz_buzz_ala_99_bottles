class IncomprehensiblyConciseFizzBuzz
  def single_verse(n)
    # Impl #1
    # (n % 15 == 0) ? 'FizzBuzz' : (n % 3 == 0 ? 'Fizz' : (n % 5 == 0 ? 'Buzz' : n.to_s))

    # Impl #2
    a = ""
    a << 'Fizz' if n % 3 == 0
    a << 'Buzz' if n % 5 == 0
    a.empty? ? n.to_s : a
  end

  def verses(a,b)
    (a..b).map { |c| single_verse(c) }
  end

  def song
    verses(1,100)
  end
end

