// helper functions
var randomChar = function() {
    var letters = 'abcdefghijklmnopqursuvwxyz'.toUpperCase()
    return letters.substr(Math.floor(Math.random() * 26), 1)
}

var randomNum = function() {
    var numbers = '1234567890'
    return numbers.substr(Math.floor(Math.random() * 10), 1)
}

var nameString = function() {
        return randomChar() + randomChar() + randomNum() + randomNum() + randomNum()
    }
    //

var Robot = function() {
    this.usedNames = []
    this.name = nameString()
    this.usedNames += this.name
};

Robot.prototype.reset = function() {
    var newName = nameString()
    if (!this.usedNames.includes(newName)) {
        this.name = newName;
        this.usedNames += this.name;
    } else {
        this.reset()
    }
}


module.exports = Robot;