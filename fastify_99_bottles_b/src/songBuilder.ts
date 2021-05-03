export class SongBuilder {
  helloWorld() {
    return "hello world";
  }

  verse(n: number) {
    const verse =
      `${n} bottles of beer on the wall, ` +
      `${n} bottles of beer.\n` +
      `Take one down and pass it around, ` +
      `${n - 1} bottles of beer on the wall.\n`;
    return verse;
  }
}