import { NinetyNineBottles } from './ninetyNineBottles';

let ninetyNineBottles = new NinetyNineBottles;

describe('NinetyNineBottles#verse', () => {

  test('verse 99', () => {
    const expected =
      '99 bottles of beer on the wall, ' + '99 bottles of beer.\n' +
      'Take one down and pass it around, ' + '98 bottles of beer on the wall.\n';
    expect(ninetyNineBottles.verse(99)).toEqual(expected);
  });

  test('verse 3', () => {
    const expected =
    '3 bottles of beer on the wall, ' +
    '3 bottles of beer.\n' +
    'Take one down and pass it around, ' + '2 bottles of beer on the wall.\n';
    expect(ninetyNineBottles.verse(3)).toEqual(expected);
  })

  test('verse 2', () => {
    const expected =
    '2 bottles of beer on the wall, ' +
    '2 bottles of beer.\n' +
    'Take one down and pass it around, ' + '1 bottle of beer on the wall.\n';
    expect(ninetyNineBottles.verse(2)).toEqual(expected);
  });

  test('verse 1', () => {
    const expected =
    '1 bottle of beer on the wall, ' +
    '1 bottle of beer.\n' +
    'Take it down and pass it around, ' +
    'no more bottles of beer on the wall.\n';
    expect(ninetyNineBottles.verse(1)).toEqual(expected);
  });

  test('verse 0', () => {
    const expected =
    'No more bottles of beer on the wall, ' + 'no more bottles of beer.\n' +
    'Go to the store and buy some more, ' + '99 bottles of beer on the wall.\n';
    expect(ninetyNineBottles.verse(0)).toEqual(expected);
  })
})

describe('NinetyNineBottles#verses', () => {
  test('a couple verses', () => {
      const expected =
        '99 bottles of beer on the wall, ' +
        '99 bottles of beer.\n' +
        'Take one down and pass it around, ' +
        '98 bottles of beer on the wall.\n' +
        '\n' +
        '98 bottles of beer on the wall, ' +
        '98 bottles of beer.\n' +
        'Take one down and pass it around, ' +
        '97 bottles of beer on the wall.\n';
      const actual = ninetyNineBottles.verses(99,98);
      expect(ninetyNineBottles.verses(99, 98)).toEqual(expected);
    });

    test('a few verses', () => {
      const expected =
        '2 bottles of beer on the wall, ' +
        '2 bottles of beer.\n' +
        'Take one down and pass it around, ' +
        '1 bottle of beer on the wall.\n' +
        '\n' +
        '1 bottle of beer on the wall, ' +
        '1 bottle of beer.\n' +
        'Take it down and pass it around, ' +
        'no more bottles of beer on the wall.\n' +
        '\n' +
        'No more bottles of beer on the wall, ' +
        'no more bottles of beer.\n' +
        'Go to the store and buy some more, ' +
        '99 bottles of beer on the wall.\n';
      expect(ninetyNineBottles.verses(2, 0)).toEqual(expected);
    });

});

