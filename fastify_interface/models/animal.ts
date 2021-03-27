import {Loggable, Markdownable} from '../interfaces/interfaces';

export class Animal implements Loggable, Markdownable {
commonName: string;
bioClass: string;
consumptionStyle: string;
nativeContinent: string;
log(): void {
  console.log(`commonName: ${this.commonName}`);
}
markdown(): string {
  let str = `
  The ${this.commonName} is native to ${this.nativeContinent}.
  It is a ${this.consumptionStyle} of the class ${this.bioClass}.
  `.trim();
  return str;
};

constructor(
  commonName: string,
  bioClass: string,
  consumptionStyle: string,
  nativeContinent: string
){
  this.commonName = commonName;
  this.bioClass = bioClass;
  this.consumptionStyle = consumptionStyle;
  this.nativeContinent = nativeContinent;
}
}