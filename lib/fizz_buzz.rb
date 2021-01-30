class FizzBuzz
  def single_verse(n)
    n_div_by_3 = n % 3 == 0
    if n_div_by_3
      'Fizz'
    else
      n.to_s
    end
  end
end