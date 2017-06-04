var Clock = function(hour, min) {
    min = (typeof min !== 'undefined') ? min : 0;
    d = new Date()
    d.setUTCHours(hour)
    d.setUTCMinutes(min)
    this.time = d
};

Clock.prototype.equals = function(clock) {
    return this.toString() === clock.toString();
};

Clock.prototype.toString = function() {
    return JSON.stringify(this.time).slice(12, 17)
}

Clock.prototype.plus = function(minutes) {
    current = this.time.getMinutes()
    this.time.setUTCMinutes(current + minutes)
    return this.toString()
}

Clock.prototype.minus = function(minutes) {
    current = this.time.getMinutes()
    this.time.setUTCMinutes(current - minutes)
    return this.toString()
}

var at = function(hour, min) {
    clock = new Clock(hour, min)
    return clock
};


var at = module.exports = { at };