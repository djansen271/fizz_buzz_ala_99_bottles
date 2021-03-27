"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.Mushroom = void 0;
// export class Mushroom implements Loggable, Markdownable {
var Mushroom = /** @class */ (function () {
    function Mushroom(commonName, latinName, capShape, ecology) {
        this.commonName = commonName;
        this.latinName = latinName;
        this.capShape = capShape;
        this.ecology = ecology;
    }
    Mushroom.prototype.log = function () {
        console.log("mushroom " + this.commonName + " (aka " + this.latinName + ")");
    };
    Mushroom.prototype.markdown = function () {
        var str = "\n    The mushroom " + this.latinName + " is better known as the " + this.commonName + ".\n    Its cap is " + this.capShape + " and lives in " + this.ecology + " areas.\n    ";
        return str;
    };
    return Mushroom;
}());
exports.Mushroom = Mushroom;
//https://www.permies.com/t/55316/a/38472/Mushroom%20Identification%20Chart.jpg
