var Gigasecond = function(input) {
    this.d = input;
};

Gigasecond.prototype.date = function() {
    return new Date(new Date(this.d).setUTCSeconds(this.d.getUTCSeconds() + Math.pow(10, 9)))
};

module.exports = Gigasecond;