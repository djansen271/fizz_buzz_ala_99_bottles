require 'spec_helper'

describe BottleVerse do
  it 'renders the upper bound of the general rule' do
    expected =
      "99 bottles of beer on the wall, " +
      "99 bottles of beer.\n" +
      "Take one down and pass it around, " +
      "98 bottles of beer on the wall.\n"

    expect(BottleVerse.lyrics(99)).to eq(expected)
  end


  it 'renders the lower bound of the general rule' do
    expected =
      "3 bottles of beer on the wall, " +
      "3 bottles of beer.\n" +
      "Take one down and pass it around, " +
      "2 bottles of beer on the wall.\n"
    expect(BottleVerse.lyrics(3)).to eq(expected)
  end

  it 'renders the verse with 7 bottles' do
    expected = "7 bottles of beer on the wall, " +
      "7 bottles of beer.\n" +
      "Take one down and pass it around, " + "1 six-pack of beer on the wall.\n"
    expect(BottleVerse.lyrics(7)).to eq(expected)
  end

  it 'renders the verse with 6 bottles' do
    expected =
    "1 six-pack of beer on the wall, " + "1 six-pack of beer.\n" +
    "Take one down and pass it around, " + "5 bottles of beer on the wall.\n"
    expect(BottleVerse.lyrics(6)).to eq(expected)
  end

  it 'renders the verse with 2 bottles' do
    expected =
      "2 bottles of beer on the wall, " +
      "2 bottles of beer.\n" +
      "Take one down and pass it around, " +
      "1 bottle of beer on the wall.\n"

    expect(BottleVerse.lyrics(2)).to eq(expected)
  end

  it 'renders the verse with 1 bottle' do
    expected =
      "1 bottle of beer on the wall, " +
      "1 bottle of beer.\n" +
      "Take it down and pass it around, " +
      "no more bottles of beer on the wall.\n"

    expect(BottleVerse.lyrics(1)).to eq(expected)
  end

  it 'renders the verse with 0 bottles' do
    expected =
      "No more bottles of beer on the wall, " +
      "no more bottles of beer.\n" +
      "Go to the store and buy some more, " +
      "99 bottles of beer on the wall.\n"

    expect(BottleVerse.lyrics(0)).to eq(expected)
  end

end