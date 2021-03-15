interface BottleNumber {
  container: string;
  pronoun: string;
  numberRepresentation: string;
  // successor: BottleNumber;
  nextAction: string;
  toString: string;
}

export const bottleNumber0: BottleNumber = {
  container:'bottles',
  pronoun: 'it',
  numberRepresentation: '1',
  // successor: bottleNumber99,
  nextAction: `Go to the store and buy some more`,
  toString: 'no more'
}

export const bottleNumber1: BottleNumber = {
  container:'bottle',
  pronoun: 'it',
  numberRepresentation: '1',
  // successor: bottleNumber0,
  nextAction: `Take it down and pass it around`,
  toString: '1 bottle'
}

export const bottleNumberDefault: BottleNumber = {
  container: 'bottler',
  pronoun: 'one',
  numberRepresentation: 'overrideme'
}



// export const bottleNumberDefault: Bottles = {
//   verse(num: number) {
//     let str = `${num} bottles of beer on the wall, ` +
//       `${num} bottles of beer.\n` +
//       'Take one down and pass it around, ' +
//       `${num - 1} bottles of beer on the wall.\n`;
//     return str;
//   }
// }

// export const bottleNumber1: Bottles = {
//   verse() {
//     let str = '1 bottle of beer on the wall, ' +
//       '1 bottle of beer.\n' +
//       'Take it down and pass it around, ' +
//       'no more bottles of beer on the wall.\n';
//     return str;
//   },
// }

// export const bottleNumber2: Bottles = {
//   verse() {
//     let str = '1 bottle of beer on the wall, ' +
//       '1 bottle of beer.\n' +
//       'Take it down and pass it around, ' +
//       'no more bottles of beer on the wall.\n';
//     return str;
//   },
// }