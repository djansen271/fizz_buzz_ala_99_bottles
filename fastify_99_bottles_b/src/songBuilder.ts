export class SongBuilder {
  helloWorld() {
    return "hello world";
  }

  verse(n: number) {
    const verse =
      '99 bottles of beer on the wall, ' + '99 bottles of beer.\n' +
      'Take one down and pass it around, ' + '98 bottles of beer on the wall.\n';
    return verse;
  }
}