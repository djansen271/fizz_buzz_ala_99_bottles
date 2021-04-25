import { SongGenerator } from '../interfaces/interfaces';

export class NinetyNineBottles implements SongGenerator {
  verse(n: number): string { return "blah" }
  verses(start: number, ending: number): string {
    return "verses method"
  }
  song(): string {
    return "here is the whole song"
  }
}