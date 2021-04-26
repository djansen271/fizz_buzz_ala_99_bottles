import { SongGenerator } from '../interfaces/interfaces';

export class NinetyNineBottles implements SongGenerator {
  verse(n: number): string {
    let verse;
    console.log(`n: ${n}`);
    switch (n) {
      case 1: {
        return '1 bottle of beer on the wall, ' +
        '1 bottle of beer.\n' +
        'Take it down and pass it around, ' +
        'no more bottles of beer on the wall.\n';
      }
      default: {
          return "things";
        }
      }
      return verse;
    }
  verses(start: number, ending: number): string {
    return "verses method"
  }
  song(): string {
    return "here is the whole song"
  }
}