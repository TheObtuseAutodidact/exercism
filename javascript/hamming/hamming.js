var Hamming = function() {}

Hamming.prototype.compute = function(string1, string2) {
    if (string1.length !== string2.length)
        throw "DNA strands must be of equal length.";
    var count = 0
    string1.split("").forEach(function(char, idx) {
        if (char !== string2[idx]) {
            count++
        }
    })
    return count
}

module.exports = Hamming;