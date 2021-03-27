

import {Loggable, Markdownable} from '../interfaces/interfaces';

// export class Mushroom implements Loggable, Markdownable {
export class Mushroom implements Loggable, Markdownable {
  commonName: string;
  latinName: string;
  capShape: string;
  ecology: string;
  log(): void {
    console.log(`mushroom ${this.commonName} (aka ${this.latinName})`);
  }
  markdown(): string {
    let str = `
    The mushroom ${this.latinName} is better known as the ${this.commonName}.
    Its cap is ${this.capShape} and lives in ${this.ecology} areas.
    `
    return str;
  }

  constructor(
    commonName: string,
    latinName: string,
    capShape: string,
    ecology: string,
  ) {
    this.commonName = commonName;
    this.latinName = latinName;
    this.capShape = capShape;
    this.ecology = ecology;
  }
}


//https://www.permies.com/t/55316/a/38472/Mushroom%20Identification%20Chart.jpg