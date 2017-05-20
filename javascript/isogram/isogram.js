var Isogram = function(input_string) {
    this.s = input_string
}

Isogram.prototype.isIsogram = function() {
    for (i=0; i < this.s.length; i++) {
        if (this.s.match(new RegExp(this.s[i], "gi")).length > 1 && this.s[i].match(/[a-z\u00C0-\u017F]/, i)) {
            return false
        }
    }
    return true
}

module.exports = Isogram;