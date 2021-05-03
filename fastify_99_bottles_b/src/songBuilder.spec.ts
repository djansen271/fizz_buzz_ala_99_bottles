import { SongBuilder } from './songBuilder';

test('2 is 2', () => {
  expect(true).toBe(true);
})

test('hello world', () => {
  let songBuilder = new SongBuilder;
  expect(songBuilder.helloWorld()).toEqual('hello world');
})