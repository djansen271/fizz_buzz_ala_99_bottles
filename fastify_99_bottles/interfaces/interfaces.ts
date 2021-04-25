export interface SongGenerator {
  verse(n: number): string
  verses(starting: number, ending: number): string
  song(): string
}