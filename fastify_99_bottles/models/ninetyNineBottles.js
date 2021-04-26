"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.NinetyNineBottles = void 0;
var NinetyNineBottles = /** @class */ (function () {
    function NinetyNineBottles() {
    }
    NinetyNineBottles.prototype.verse = function (n) {
        var verse;
        console.log("n: " + n);
        switch (n) {
            case 1: {
                return '1 bottle of beer on the wall, ' +
                    '1 bottle of beer.\n' +
                    'Take it down and pass it around, ' +
                    'no more bottles of beer on the wall.\n';
            }
            default: {
                return "things";
            }
        }
        return verse;
    };
    NinetyNineBottles.prototype.verses = function (start, ending) {
        return "verses method";
    };
    NinetyNineBottles.prototype.song = function () {
        return "here is the whole song";
    };
    return NinetyNineBottles;
}());
exports.NinetyNineBottles = NinetyNineBottles;
