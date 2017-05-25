var Pangram = function(input) {
    this.string = input.toLowerCase();
};

Pangram.prototype.isPangram = function() {
    var solution = {};
    this.string.split("").forEach(function(i) {
        if (i.match(/[a-z]/)) {
            solution[i] = 1
        }
    })
    if (Object.keys(solution).length == 26) { // length of alphabet
        return true
    }
    return false
}

module.exports = Pangram;