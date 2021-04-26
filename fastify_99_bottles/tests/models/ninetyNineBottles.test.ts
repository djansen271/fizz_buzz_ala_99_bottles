import { NinetyNineBottles } from '../../models/ninetyNineBottles';

describe('NinetyNineBottles', () => {
  let nnb = new NinetyNineBottles()

  test('verse 1', () => {
    const expected =
    '1 bottle of beer on the wall, ' +
    '1 bottle of beer.\n' +
    'Take it down and pass it around, ' +
    'no more bottles of beer on the wall.\n';

    expect(nnb.verse(1)).toBe(expected);
  });

});