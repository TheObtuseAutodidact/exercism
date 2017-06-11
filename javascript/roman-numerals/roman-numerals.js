var arabic = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
var roman = ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"]

var toRoman = function(num) {
    var solution_string = ""
    arabic.forEach(function(n, idx) {
        while (num >= n) {
            solution_string += roman[idx];
            num -= n;
        }
    })
    return solution_string
}

var exports = module.exports = toRoman;