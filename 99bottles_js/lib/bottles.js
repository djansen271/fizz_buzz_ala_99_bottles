// import { downTo } from './helpers';

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
      case 99:
        str = '99 bottles of beer on the wall, ' +
          '99 bottles of beer.\n' +
          'Take one down and pass it around, ' +
          '98 bottles of beer on the wall.\n';
    }
    return str
  }
}
