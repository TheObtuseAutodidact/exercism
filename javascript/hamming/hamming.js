var Hamming = function() {}

Hamming.prototype.compute = function(string1, string2) {
    if (string1.length !== string2.length)
        throw "DNA strands must be of equal length.";
    return string1.split("").filter(function(char, idx) {
        return char !== string2[idx]
    }).length
}

module.exports = Hamming;