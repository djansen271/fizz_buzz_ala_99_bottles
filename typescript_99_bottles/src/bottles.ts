interface Bottles {
  verse: () => string;
  verses: () => string;
  song: () => string;
}


export const oneBottle:Bottles = {
  verse() {
    let str = '1 bottle of beer on the wall, ' +
      '1 bottle of beer.\n' +
      'Take it down and pass it around, ' +
      'no more bottles of beer on the wall.\n';
    return str;
  },

  verses() {
    return "verses blah"
  },

  song() {
    return "song blah"
  }
}