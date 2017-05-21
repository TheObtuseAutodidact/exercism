var BeerSong = function(){};

BeerSong.prototype.verse = function(num) {
        if (num > 2) {
            return (num + " bottles of beer on the wall, " + num + " bottles of beer.\nTake one down and pass it around, " + (num - 1) + " bottles of beer on the wall.\n")
        } 
        if (num === 2 ) {
            return (num + " bottles of beer on the wall, " + num + " bottles of beer.\nTake one down and pass it around, " + (num - 1) + " bottle of beer on the wall.\n")
        } 
        if (num === 1) {
            return (num + " bottle of beer on the wall, " + num + " bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall.\n")
        } 
        if (num == 0) {
            return 'No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n'
    }
}

BeerSong.prototype.sing = function(bottles, rounds) {
    result = ""
    var self = this;
    rounds = (typeof rounds !== 'undefined') ?  rounds : 1;
    limit = (rounds !== 1) ? bottles - rounds : bottles    
    for (i=0; i<(limit + 1); i++) {
        result += self.verse.call(self, bottles) + "\n"
        bottles--
    }
    return result.slice(0,-1)
}

module.exports = BeerSong;