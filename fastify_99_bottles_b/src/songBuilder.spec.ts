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
  })
})

