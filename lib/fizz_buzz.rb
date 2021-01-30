class FizzBuzz
  def single_verse(n)
    n_div_by_3 = n % 3 == 0
    n_div_by_5 = n % 5 == 0
    if n_div_by_3 && n_div_by_5
      'FizzBuzz'
    elsif n_div_by_3
      'Fizz'
    elsif n_div_by_5
      'Buzz'
    else
      n.to_s
    end
  end
end