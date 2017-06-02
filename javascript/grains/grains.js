var bigInt = require("./big-integer");

var Grains = function() {};

Grains.prototype.square = function(num) {
    // num - 1 allows us to start from the first square (square 0) with 1 grain
    return bigInt(2).pow(num - 1).toString()
}

Grains.prototype.total = function() {
    var total = bigInt(0)
    for (i = 1; i <= 64; i++) {
        total = total.add(bigInt(this.square(i)))
    }
    return String(total)
}

module.exports = Grains;