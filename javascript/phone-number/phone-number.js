var PhoneNumber = function(num_string) {
    this.num = num_string.replace(/\D/g, "")
};

PhoneNumber.prototype.number = function() {
    if (this.num.length === 10) {
        return this.num
    }
    if (this.num.length === 11 && this.num[0] === "1") {
        return this.num.slice(1);
    }
    return "0000000000"
}

PhoneNumber.prototype.areaCode = function() {
    if (this.num.length === 10) {
        return this.num.slice(0, 3)
    }
    if (this.num.length === 11 && this.num[0] === "1") {
        return this.num.slice(1, 4);
    }
    return "000"
}

PhoneNumber.prototype.toString = function() {
    if (this.num.length === 10) {
        return "(" + this.num.slice(0, 3) + ") " + this.num.slice(3, 6) + "-" + this.num.slice(6)
    }
    if (this.num.length === 11 && this.num[0] === "1") {
        return this.num.slice(1, 4);
    }
    return "000"
}

module.exports = PhoneNumber;