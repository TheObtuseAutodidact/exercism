var Gigasecond = function(input){
    this.d = input;
};

Gigasecond.prototype.date = function() {
    var gs = new Date(this.d);
    return new Date(gs.setUTCSeconds(this.d.getUTCSeconds() + Math.pow(10,9)))
};

module.exports = Gigasecond;