"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.Animal = void 0;
var Animal = /** @class */ (function () {
    function Animal(commonName, bioClass, consumptionStyle, nativeContinent) {
        this.commonName = commonName;
        this.bioClass = bioClass;
        this.consumptionStyle = consumptionStyle;
        this.nativeContinent = nativeContinent;
    }
    Animal.prototype.log = function () {
        console.log("commonName: " + this.commonName);
    };
    Animal.prototype.markdown = function () {
        var str = ("\n  The " + this.commonName + " is native to " + this.nativeContinent + ".\n  It is a " + this.consumptionStyle + " of the class " + this.bioClass + ".\n  ").trim();
        return str;
    };
    ;
    return Animal;
}());
exports.Animal = Animal;
