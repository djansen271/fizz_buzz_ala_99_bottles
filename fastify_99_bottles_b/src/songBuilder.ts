export class SongBuilder {
  helloWorld() {
    return "hello world";
  }

  verse(n: number) {
    switch (n) {
      case 2:
        return '2 bottles of beer on the wall, ' +
        '2 bottles of beer.\n' +
        'Take one down and pass it around, ' +
        '1 bottle of beer on the wall.\n';
      default:
        return `${n} bottles of beer on the wall, ` +
        `${n} bottles of beer.\n` +
        `Take one down and pass it around, ` +
        `${n - 1} bottles of beer on the wall.\n`;
    }
  }
}