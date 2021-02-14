class SpeculativelyGeneralFizzBuzz2
  attr_reader :div_by_to_words

  def initialize(div_by_to_words)
    raise ArgumentError, "keys must be integers" unless div_by_to_words.select { |x| x.is_a?(Integer) }.length == div_by_to_words.length
    @div_by_to_words = div_by_to_words
  end

  def single_verse(n)
    verse_for(n)
  end

  def verses(starting,ending)
    (starting..ending).map{ |n| single_verse(n) }
  end

  def song
    verses(1,100)
  end

  def verse_for(n)
    return_text = ''
    div_by_to_words.each do |divisor, txt|

      if n % divisor == 0
        return_text << txt
      end
    end
    return_text.empty? ? n.to_s : return_text
  end
end
