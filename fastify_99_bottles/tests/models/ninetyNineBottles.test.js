"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var ninetyNineBottles_1 = require("../../models/ninetyNineBottles");
describe('NinetyNineBottles', function () {
    var nnb = new ninetyNineBottles_1.NinetyNineBottles();
    test('verse 1', function () {
        var expected = '1 bottle of beer on the wall, ' +
            '1 bottle of beer.\n' +
            'Take it down and pass it around, ' +
            'no more bottles of beer on the wall.\n';
        expect(nnb.verse(1)).toBe(expected);
    });
});
