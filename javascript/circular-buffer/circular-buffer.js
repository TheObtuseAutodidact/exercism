var CircularBuffer = function(num) {
    this.slots = num;
    this.buffer = [];
};

CircularBuffer.prototype.read = function() {
    if (!this.slots) {
        throw bufferEmptyException()
    }
    return this.buffer.pop()
}

CircularBuffer.prototype.write = function(num) {
    if (num) {
        if (this.buffer.length == this.slots) {
            throw bufferFullException()
        }
        this.buffer.unshift(num)
    }
}

CircularBuffer.prototype.clear = function() {
    this.buffer = [];
}

CircularBuffer.prototype.forceWrite = function(num) {
    this.buffer.unshift(num)
    this.buffer = this.buffer.slice(0, this.slots)
}

var circularBuffer = function(num) {
    return new CircularBuffer(num)
}

var bufferEmptyException = function() {
    return "Error: Buffer Empty"
};

var bufferFullException = function() {
    return "Error: Buffer Full"
}

module.exports = { circularBuffer, bufferEmptyException, bufferFullException };