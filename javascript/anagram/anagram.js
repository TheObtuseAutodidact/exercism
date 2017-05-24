var Anagram = function(word) {
    this.word = word
}

Anagram.prototype.matches = function() {
    if (arguments.length === 1 && typeof arguments[0] === "string") {
        arguments[0] = [arguments[0]]
    }
    var word_list = (arguments.length === 1 ? arguments[0] : Array.apply(null, arguments));
    self = this;
    return sol_list = word_list.filter(function(wrd) {
        return self.word.toLowerCase() !== wrd.toLowerCase() && JSON.stringify(wrd.toLowerCase().split("").sort()) === JSON.stringify(self.word.toLowerCase().split("").sort())
    })
}

module.exports = Anagram;