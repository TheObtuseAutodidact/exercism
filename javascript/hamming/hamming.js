var Hamming = function() {}

Hamming.prototype.compute = function(string1, string2) {
    if (string1.length !== string2.length)
        throw "DNA strands must be of equal length.";
    count = 0
    for (i=0; i < string1.length; i++) {
        if (string1[i] !== string2[i])
            count++
    }
    return count
}

module.exports = Hamming;