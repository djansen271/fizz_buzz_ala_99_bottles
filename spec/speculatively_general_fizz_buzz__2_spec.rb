describe SpeculativelyGeneralFizzBuzz2 do
  describe 'traditional FizzBuzz' do
    let(:fizz_response) { 'Fizz' }
    let(:buzz_response) { 'Buzz' }
    let(:fizzbuzz_response) { 'FizzBuzz' }
    let(:subject) { SpeculativelyGeneralFizzBuzz2.new( {3 => 'Fizz', 5 => 'Buzz'} ) }

    describe '#single_verse' do
      it 'returns 1 given 1' do
        expect(subject.single_verse(1)).to eq('1')
      end

      it 'returns 2 given 2' do
        expect(subject.single_verse(2)).to eq('2')
      end

      it 'returns Fizz given 3' do
        expect(subject.single_verse(3)).to eq(fizz_response)
      end

      it 'returns Buzz given 5' do
        expect(subject.single_verse(5)).to eq(buzz_response)
      end

      it 'returns FizzBuzz given 15' do
        expect(subject.single_verse(15)).to eq(fizzbuzz_response)
      end

      it 'returns 32 given 32' do
        expect(subject.single_verse(32)).to eq('32')
      end

      it 'returns Fizz given 33' do
        expect(subject.single_verse(33)).to eq(fizz_response)
      end

      it 'returns Buzz given 35' do
        expect(subject.single_verse(35)).to eq(buzz_response)
      end

      it 'returns FizzBuzz given 45' do
        expect(subject.single_verse(45)).to eq(fizzbuzz_response)
      end
    end

    describe '#verses' do
      it 'returns 1, 2 given 1,2' do
        expect(subject.verses(1,2)).to eq(['1','2'])
      end

      it 'returns 2, Fizz, 4, Buzz given 2,5' do
        expect(subject.verses(2,5)).to eq(['2',fizz_response, '4', buzz_response])
      end
    end

    describe '#song' do
      it 'returns 1,2,Fizz,4,Buzz,6,7,..Fizz,100' do
        expected = %W(
        1  2  #{fizz_response} 4  #{buzz_response} #{fizz_response} 7  8  #{fizz_response} #{buzz_response} 11 #{fizz_response} 13 14 #{fizzbuzz_response}
        16 17 #{fizz_response} 19 #{buzz_response} #{fizz_response} 22 23 #{fizz_response} #{buzz_response} 26 #{fizz_response} 28 29 #{fizzbuzz_response}
        31 32 #{fizz_response} 34 #{buzz_response} #{fizz_response} 37 38 #{fizz_response} #{buzz_response} 41 #{fizz_response} 43 44 #{fizzbuzz_response}
        46 47 #{fizz_response} 49 #{buzz_response} #{fizz_response} 52 53 #{fizz_response} #{buzz_response} 56 #{fizz_response} 58 59 #{fizzbuzz_response}
        61 62 #{fizz_response} 64 #{buzz_response} #{fizz_response} 67 68 #{fizz_response} #{buzz_response} 71 #{fizz_response} 73 74 #{fizzbuzz_response}
        76 77 #{fizz_response} 79 #{buzz_response} #{fizz_response} 82 83 #{fizz_response} #{buzz_response} 86 #{fizz_response} 88 89 #{fizzbuzz_response}
        91 92 #{fizz_response} 94 #{buzz_response} #{fizz_response} 97 98 #{fizz_response} #{buzz_response}
    ).map(&:strip)
        debugging_message = ""
        actual = subject.song
        expected.each_with_index do |exp, i|
          debugging_message << "Expected: #{exp} does not match actual: #{actual[i]} at index #{i}\n" if exp != actual[i]
        end
        expect(subject.song).to eq(expected), debugging_message
      end
    end
  end

  describe 'changing the words' do
    let(:fizz_response) { 'Potato' }
    let(:buzz_response) { 'Tomato' }
    let(:fizzbuzz_response) { 'PotatoTomato' }
    let(:subject) { SpeculativelyGeneralFizzBuzz2.new( {3 => 'Potato', 5 => 'Tomato'} ) }

    describe '#single_verse' do
      it 'returns 1 given 1' do
        expect(subject.single_verse(1)).to eq('1')
      end

      it 'returns 2 given 2' do
        expect(subject.single_verse(2)).to eq('2')
      end

      it 'returns Fizz given 3' do
        expect(subject.single_verse(3)).to eq(fizz_response)
      end

      it 'returns Buzz given 5' do
        expect(subject.single_verse(5)).to eq(buzz_response)
      end

      it 'returns FizzBuzz given 15' do
        expect(subject.single_verse(15)).to eq(fizzbuzz_response)
      end

      it 'returns 32 given 32' do
        expect(subject.single_verse(32)).to eq('32')
      end

      it 'returns Fizz given 33' do
        expect(subject.single_verse(33)).to eq(fizz_response)
      end

      it 'returns Buzz given 35' do
        expect(subject.single_verse(35)).to eq(buzz_response)
      end

      it 'returns FizzBuzz given 45' do
        expect(subject.single_verse(45)).to eq(fizzbuzz_response)
      end
    end

    describe '#verses' do
      it 'returns 1, 2 given 1,2' do
        expect(subject.verses(1,2)).to eq(['1','2'])
      end

      it 'returns 2, Fizz, 4, Buzz given 2,5' do
        expect(subject.verses(2,5)).to eq(['2',fizz_response, '4', buzz_response])
      end
    end

    describe '#song' do
      it 'returns 1,2,Fizz,4,Buzz,6,7,..Fizz,100' do
        expected = %W(
        1  2  #{fizz_response} 4  #{buzz_response} #{fizz_response} 7  8  #{fizz_response} #{buzz_response} 11 #{fizz_response} 13 14 #{fizzbuzz_response}
        16 17 #{fizz_response} 19 #{buzz_response} #{fizz_response} 22 23 #{fizz_response} #{buzz_response} 26 #{fizz_response} 28 29 #{fizzbuzz_response}
        31 32 #{fizz_response} 34 #{buzz_response} #{fizz_response} 37 38 #{fizz_response} #{buzz_response} 41 #{fizz_response} 43 44 #{fizzbuzz_response}
        46 47 #{fizz_response} 49 #{buzz_response} #{fizz_response} 52 53 #{fizz_response} #{buzz_response} 56 #{fizz_response} 58 59 #{fizzbuzz_response}
        61 62 #{fizz_response} 64 #{buzz_response} #{fizz_response} 67 68 #{fizz_response} #{buzz_response} 71 #{fizz_response} 73 74 #{fizzbuzz_response}
        76 77 #{fizz_response} 79 #{buzz_response} #{fizz_response} 82 83 #{fizz_response} #{buzz_response} 86 #{fizz_response} 88 89 #{fizzbuzz_response}
        91 92 #{fizz_response} 94 #{buzz_response} #{fizz_response} 97 98 #{fizz_response} #{buzz_response}
    ).map(&:strip)
        debugging_message = ""
        actual = subject.song
        expected.each_with_index do |exp, i|
          debugging_message << "Expected: #{exp} does not match actual: #{actual[i]} at index #{i}\n" if exp != actual[i]
        end
        expect(subject.song).to eq(expected), debugging_message
      end
    end
  end

  describe 'changing the numbers' do
    let(:fizz_response) { 'Fizz' }
    let(:buzz_response) { 'Buzz' }
    let(:fizzbuzz_response) { 'FizzBuzz' }
    let(:subject) { SpeculativelyGeneralFizzBuzz2.new( {7 => 'Fizz', 11 => 'Buzz'} ) }

    describe '#single_verse' do
      it 'returns 1 given 1' do
        expect(subject.single_verse(1)).to eq('1')
      end

      it 'returns 2 given 2' do
        expect(subject.single_verse(2)).to eq('2')
      end

      it 'returns Fizz given 7' do
        expect(subject.single_verse(7)).to eq(fizz_response)
      end

      it 'returns Buzz given 11' do
        expect(subject.single_verse(11)).to eq(buzz_response)
      end

      it 'returns FizzBuzz given 77' do
        expect(subject.single_verse(77)).to eq(fizzbuzz_response)
      end

      it 'returns 32 given 32' do
        expect(subject.single_verse(32)).to eq('32')
      end

      it 'returns Fizz given 28' do
        expect(subject.single_verse(28)).to eq(fizz_response)
      end

      it 'returns Buzz given 55' do
        expect(subject.single_verse(55)).to eq(buzz_response)
      end

      it 'returns FizzBuzz given 308' do
        expect(subject.single_verse(308)).to eq(fizzbuzz_response)
      end
    end

    describe '#verses' do
      it 'returns 1, 2 given 1,2' do
        expect(subject.verses(1,2)).to eq(['1','2'])
      end

      it 'returns 6, Fizz, 8, 9, 10 Buzz,12 given 6,12' do
        expect(subject.verses(6,12)).to eq(['6',fizz_response, '8', '9', '10', buzz_response, '12'])
      end
    end

    describe '#song' do
      it 'returns 1,2,Fizz,4,Buzz,6,7,..Fizz,100' do
        expected = %W(
        1  2  3  4  5  6  #{fizz_response}
        8  9  10  #{buzz_response}
        12 13 #{fizz_response}
        15 16 17 18 19 20 #{fizz_response}
        #{buzz_response}
        23 24 25 26 27 #{fizz_response}
        29 30 31 32 #{buzz_response}
        34 #{fizz_response}
        36 37 38 39 40 41 #{fizz_response}
        43 #{buzz_response}
        45 46 47 48 #{fizz_response}
        50 51 52 53 54 #{buzz_response}
        #{fizz_response}
        57 58 59 60 61 62 #{fizz_response}
        64 65 #{buzz_response}
        67 68 69 #{fizz_response}
        71 72 73 74 75 76 #{fizzbuzz_response}
        78 79 80 81 82 83 #{fizz_response}
        85 86 87 #{buzz_response}
        89 90 #{fizz_response}
        92 93 94 95 96 97 #{fizz_response}
        #{buzz_response}
        100
    ).map(&:strip)
        debugging_message = ""
        actual = subject.song
        expected.each_with_index do |exp, i|
          debugging_message << "Expected: #{exp} does not match actual: #{actual[i]} at index #{i}\n" if exp != actual[i]
        end
        expect(subject.song).to eq(expected), debugging_message
      end
    end
  end

  describe '3 inputs' do
    let(:fizz_response) { 'Fizz' }
    let(:buzz_response) { 'Buzz' }
    let(:gozz_response) { 'Gozz' }
    let(:fizzbuzz_response) { 'FizzBuzz' }
    let(:fizzgozz_response) { 'FizzGozz' }
    let(:buzzgozz_response) { 'BuzzGozz' }
    let(:fizzbuzzgozz_response) { 'FizzBuzzGozz' }
    let(:subject) { SpeculativelyGeneralFizzBuzz2.new( {3 => 'Fizz', 5 => 'Buzz', 7 => 'Gozz'} ) }

    describe '#single_verse' do
      it 'returns 1 given 1' do
        expect(subject.single_verse(1)).to eq('1')
      end

      it 'returns Fizz given 3' do
        expect(subject.single_verse(3)).to eq(fizz_response)
      end

      it 'returns Buzz given 5' do
        expect(subject.single_verse(5)).to eq(buzz_response)
      end

      it 'returns Gozz given 7' do
        expect(subject.single_verse(7)).to eq(gozz_response)
      end

      it 'returns FizzGozz given 21' do
        expect(subject.single_verse(21)).to eq(fizzgozz_response)
      end

      it 'returns BuzzGozz given 35' do
        expect(subject.single_verse(35)).to eq(buzzgozz_response)
      end

      it 'returns FizzBuzzGozz given 105' do
        expect(subject.single_verse(105)).to eq(fizzbuzzgozz_response)
      end

      it 'returns BuzzGozz given 35' do
        expect(subject.single_verse(35)).to eq(buzzgozz_response)
      end

      it 'returns FizzBuzz given 45' do
        expect(subject.single_verse(45)).to eq(fizzbuzz_response)
      end
    end

    describe '#verses' do
      it 'returns 1, 2 given 1,2' do
        expect(subject.verses(1,2)).to eq(['1','2'])
      end

      it 'returns 2, Fizz, 4, Buzz, Fizz, Gozz, 8 given 2,8' do
        expect(subject.verses(2,8)).to eq(['2',fizz_response, '4', buzz_response, fizz_response, gozz_response, '8'])
      end
    end

    describe '#song' do
      it 'accepts a beginning and ending verse' do
        expected = %W(
        1  2  #{fizz_response} 4  #{buzz_response} #{fizz_response} #{gozz_response}  8  #{fizz_response} #{buzz_response}
    ).map(&:strip)
        debugging_message = ""
        actual = subject.song(1,10)
        expected.each_with_index do |exp, i|
          debugging_message << "Expected: #{exp} does not match actual: #{actual[i]} at index #{i}\n" if exp != actual[i]
        end
        expect(actual).to eq(expected), debugging_message
      end
    end
  end

  describe '10 inputs' do
    let(:a_response) { 'a' }
    let(:b_response) { 'b' }
    let(:c_response) { 'c' }
    let(:d_response) { 'd' }
    let(:e_response) { 'e' }
    let(:f_response) { 'f' }
    let(:g_response) { 'g' }
    let(:h_response) { 'h' }
    let(:subject) { SpeculativelyGeneralFizzBuzz2.new(
      {
      2 => 'a',
      3 => 'b',
      4 => 'c',
      5 => 'd',
      6 => 'e',
      7 => 'f',
      8 => 'g',
      9 => 'h',
      10 => 'i',
      11 => 'j',
      12 => 'k',
    }
    ) }
    describe '#single_verse' do
      it 'returns 1 given 1' do
        expect(subject.single_verse(1)).to eq('1')
      end

      it 'returns b given 3' do
        expect(subject.single_verse(3)).to eq('b')
      end

      it 'returns ac given 4' do
        expect(subject.single_verse(4)).to eq('ac')
      end

      it 'returns d given 5' do
        expect(subject.single_verse(5)).to eq('d')
      end

      it 'returns abe given 6' do
        expect(subject.single_verse(6)).to eq('abe')
      end

      it 'returns f given 7' do
        expect(subject.single_verse(7)).to eq('f')
      end

      it 'returns acg given 8' do
        expect(subject.single_verse(8)).to eq('acg')
      end

      it 'returns bh given 9' do
        expect(subject.single_verse(9)).to eq('bh')
      end

      it 'returns adi given 10' do
        expect(subject.single_verse(10)).to eq('adi')
      end

      it 'returns j given 11' do
        expect(subject.single_verse(11)).to eq('j')
      end

      it 'returns abcek given 12' do
        expect(subject.single_verse(12)).to eq('abcek')
      end

      it 'returns abcdefghijk given 479001600' do
        expect(subject.single_verse(479001600)).to eq('abcdefghijk')
      end
    end
  end
end