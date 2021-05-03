import { SongBuilder } from './songBuilder';

test('2 is 2', () => {
  expect(true).toBe(true);
})

test('hello world', () => {
  let songBuilder = new SongBuilder;
  expect(songBuilder.helloWorld()).toEqual('hello world');
})

describe('verse', () => {
  let songBuilder = new SongBuilder;

  test('verse 99', () => {
    const expected =
      '99 bottles of beer on the wall, ' + '99 bottles of beer.\n' +
      'Take one down and pass it around, ' + '98 bottles of beer on the wall.\n';
    expect(songBuilder.verse(99)).toEqual(expected);
  });

  test('verse 3', () => {
    const expected =
    '3 bottles of beer on the wall, ' +
    '3 bottles of beer.\n' +
    'Take one down and pass it around, ' + '2 bottles of beer on the wall.\n';
    expect(songBuilder.verse(3)).toEqual(expected);
  })

  test('verse 2', () => {
    const expected =
    '2 bottles of beer on the wall, ' +
    '2 bottles of beer.\n' +
    'Take one down and pass it around, ' + '1 bottle of beer on the wall.\n';
    expect(songBuilder.verse(2)).toEqual(expected);
  });

  test('verse 1', () => {
    const expected =
      '1 bottle of beer on the wall, ' +
      '1 bottle of beer.\n' +
      'Take it down and pass it around, ' +
      'no more bottles of beer on the wall.\n';
  });
})

