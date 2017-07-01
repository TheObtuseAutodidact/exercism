var Trinary = function(numString) {
    this.numString = numString
};

Trinary.prototype.toDecimal = function() {
    if (!Number(this.numString)) { return 0 };
    var solutionArray = this.numString.split("").reverse();
    var solutionSum = 0;
    solutionArray.forEach(function(n, idx) {
        solutionSum += Math.pow(3, idx) * Number(n)
    })
    return solutionSum
};

module.exports = Trinary;