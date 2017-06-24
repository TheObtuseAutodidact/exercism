var Raindrops = function() {};

Raindrops.prototype.convert = function(num) {
    solution_string = ""
    if (num % 3 === 0) {
        solution_string += "Pling"
    }
    if (num % 5 === 0) {
        solution_string += "Plang"
    }
    if (num % 7 === 0) {
        solution_string += "Plong"
    }
    if (num % 3 !== 0 && num % 5 !== 0 && num % 7 !== 0) {
        return String(num)
    }
    return solution_string
}

module.exports = Raindrops;