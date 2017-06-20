var Binary = function(num) {
    this.number = num
};

Binary.prototype.toDecimal = function() {
    var sum = 0;
    var valid_digit = true;
    var digits = this.number.split("").reverse()
    digits.forEach(function(char, idx) {
        if (char !== "1" && char !== "0") {
            valid_digit = false;
            sum = 0
        }
        if (char === "1" && valid_digit) {
            sum += Math.pow(2, idx)
        }
    })
    return sum
};

module.exports = Binary;