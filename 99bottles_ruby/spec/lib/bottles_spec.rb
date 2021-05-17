require 'spec_helper'

class VerseFake
  def self.lyrics(number)
  "This is verse #{number}.\n" end
end

describe VerseFake do
  before do
    @role_player = VerseFake
  end
  include_examples 'role'
end

describe CountdownSong do
  let(:max) { 1000 }
  let(:min) { 0 }
  let(:subject) { CountdownSong.new(verse_template: verse_template, max: max, min: min) }

  describe 'using class_double of BottleVerse' do
    let(:verse_template) { class_double(BottleVerse) }

    describe 'verses' do
      it 'renders a couple verses' do
        expect(verse_template).to receive(:lyrics).with(99).and_return 'This is verse 99'
        expect(verse_template).to receive(:lyrics).with(98).and_return 'This is verse 98'
        expect(verse_template).to receive(:lyrics).with(97).and_return 'This is verse 97'

        expected =
          "This is verse 99\n" +
          "This is verse 98\n" +
          "This is verse 97"

          expect(subject.verses(99,97)).to eq(expected)
      end
    end

    describe 'verse' do
      it 'renders a verse' do
        expected = "This is verse 501."

        expect(verse_template).to receive(:lyrics).with(501).and_return 'This is verse 501.'
        expect(subject.verse(501)).to eq(expected)
      end
    end
  end

  describe 'using VerseFake ala Sandi Metz' do
    let(:subject) { CountdownSong.new(verse_template: VerseFake) }

    describe 'verses' do
      it 'renders a couple verses' do
        expected =
          "This is verse 99.\n" + "\n" +
          "This is verse 98.\n" + "\n" +
          "This is verse 97.\n"
        expect(subject.verses(99,97)).to eq(expected)
      end
    end

    describe 'verse' do
      it 'renders a verse' do
        expected = "This is verse 500.\n"

        expect(subject.verse(500)).to eq(expected)
      end
    end

    describe '#song' do
      let(:subject) { CountdownSong.new(verse_template: VerseFake, max: 47, min: 43) }
      it 'renders the entire song' do
        expected =
          "This is verse 47.\n" + "\n" +
          "This is verse 46.\n" + "\n" +
          "This is verse 45.\n" + "\n" +
          "This is verse 44.\n" + "\n" +
          "This is verse 43.\n"
        expect(subject.song).to eq(expected)
      end
    end
  end
end
