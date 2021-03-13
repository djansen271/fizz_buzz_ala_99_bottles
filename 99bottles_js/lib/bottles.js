import { downTo } from './helpers';

export class Bottles {
  constructor() {
  }

  verse(number) {
    let str
    switch(number) {
      case 3:
        str = '3 bottles of beer on the wall, ' +
          '3 bottles of beer.\n' +
          'Take one down and pass it around, ' +
          '2 bottles of beer on the wall.\n';
          break;
      case 2:
        str = '2 bottles of beer on the wall, ' +
          '2 bottles of beer.\n' +
          'Take one down and pass it around, ' +
          '1 bottle of beer on the wall.\n';
        break;
      case 1:
        str = '1 bottle of beer on the wall, ' +
          '1 bottle of beer.\n' +
          'Take it down and pass it around, ' +
          'no more bottles of beer on the wall.\n';
        break;
      case 0:
        str = 'No more bottles of beer on the wall, ' +
        'no more bottles of beer.\n' +
        'Go to the store and buy some more, ' +
        '99 bottles of beer on the wall.\n';
        break;
      default:
        str = `${number} bottles of beer on the wall, ` +
          `${number} bottles of beer.\n` +
          'Take one down and pass it around, ' +
          `${number - 1} bottles of beer on the wall.\n`;
    }
    return str
  }

  verses(starting, ending) {
    let versesStr = "";
    for(let i = starting; i >= ending; i--) {
      versesStr = versesStr + this.verse(i) + "\n";
    }
    return versesStr.trim() + "\n";
  }

  song() {
    return this.verses(99,0)
  }
}
