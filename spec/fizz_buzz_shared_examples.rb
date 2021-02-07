RSpec.shared_examples "fizzbuzz examples" do
  let(:fizz_response) { 'Fizz' }
  let(:buzz_response) { 'Buzz' }
  let(:fizzbuzz_response) { 'FizzBuzz' }

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