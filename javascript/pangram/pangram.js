var Pangram = function(input) {
    this.string = input.toLowerCase();
};

Pangram.prototype.isPangram = function() {
    var solution = {};
    for(i=0; i<this.string.length; i++) {
        if (this.string[i].match(/[a-z]/)) {
            solution[this.string[i]] = 1;
        }
    }
    if (Object.keys(solution).length == 26) { // length of alphabet
        return true
    } 
    return false
}

module.exports = Pangram;