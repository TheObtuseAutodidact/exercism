var DnaTranscriber = function(){};

var transcription = {"G": "C", "C": "G", "T":"A", "A": "U"};

DnaTranscriber.prototype.toRna = function(string) {
    return string.split("").map(function(char) {
        if (!transcription[char]) { throw "Invalid input" }
        return transcription[char]
    }).join("")
}

module.exports = DnaTranscriber;