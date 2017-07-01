var Crypto = function(str) {
    this.string = str.toLowerCase();
};

Crypto.prototype.normalizePlaintext = function() {
    return this.string.replace(/[`~!@#$%^&*()_ |+\-=?;:'",.<>\{\}\[\]\\\/]/gi, '');
};

Crypto.prototype.size = function() {
    var str = this.normalizePlaintext();
    for (var i = 0; i < str.length; i++) {
        if (i * i === str.length || i * i > str.length) {
            return i
        }
    }

};

Crypto.prototype.plaintextSegments = function() {
    var solutionString = "";
    var segmentSize = this.size();

    this.normalizePlaintext().split("").forEach(function(char, idx) {
        if (idx > 0 && idx % segmentSize === 0) {
            solutionString += " "
        }
        solutionString += char;
    });
    return solutionString.split(" ")
};

Crypto.prototype.ciphertext = function() {
    var rowLength = this.plaintextSegments()[0].length;
    var colLength = this.plaintextSegments().length;
    var solutionArray = [];
    for (var i = 0; i < rowLength; i++) {
        for (var j = 0; j < colLength; j++) {
            solutionArray.push(this.plaintextSegments()[j][i])
        }
    }
    return solutionArray.join("")
};

module.exports = Crypto;