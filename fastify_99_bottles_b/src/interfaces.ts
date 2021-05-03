interface SongBuilder {
  song: () => string;
  verse: (n: number) => string;
  verses: (starting: number, ending: number) => string;
}