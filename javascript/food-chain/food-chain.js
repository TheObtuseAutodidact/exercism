var FoodChain = function() {
    this.vFly = 'I know an old lady who swallowed a fly.\nI don\'t know why she swallowed the fly. Perhaps she\'ll die.\n';
    this.Fly = 'fly.\nI don\'t know why she swallowed the fly. Perhaps she\'ll die.\n';
    this.vSpider = 'I know an old lady who swallowed a spider.\nIt wriggled and jiggled and tickled inside her.\n' +
        'She swallowed the spider to catch the ';
    this.Spider = 'spider that wriggled and jiggled and tickled inside her.\n' +
        'She swallowed the spider to catch the '
    this.vBird = 'I know an old lady who swallowed a bird.\n' +
        'How absurd to swallow a bird!\n' +
        'She swallowed the bird to catch the '
    this.Bird = 'bird.\n' +
        'She swallowed the bird to catch the '
    this.vCat = 'I know an old lady who swallowed a cat.\n' +
        'Imagine that, to swallow a cat!\n' +
        'She swallowed the cat to catch the '
    this.Cat = 'cat.\n' +
        'She swallowed the cat to catch the '
    this.vDog = 'I know an old lady who swallowed a dog.\n' +
        'What a hog, to swallow a dog!\n' +
        'She swallowed the dog to catch the '
    this.Dog = 'dog.\n' +
        'She swallowed the dog to catch the '
    this.vGoat = 'I know an old lady who swallowed a goat.\n' +
        'Just opened her throat and swallowed a goat!\n' +
        'She swallowed the goat to catch the '
    this.Goat = 'goat.\n' +
        'She swallowed the goat to catch the '
    this.vCow = 'I know an old lady who swallowed a cow.\n' +
        'I don\'t know how she swallowed a cow!\n' +
        'She swallowed the cow to catch the '
    this.vHorse = 'I know an old lady who swallowed a horse.\n' + 'She\'s dead, of course!\n'

};

FoodChain.prototype.verse = function(num) {
    if (num === 1) {
        return this.vFly
    } else if (num === 2) {
        return this.vSpider + this.Fly
    } else if (num === 3) {
        return this.vBird + this.Spider + this.Fly
    } else if (num === 4) {
        return this.vCat + this.Bird + this.Spider + this.Fly
    } else if (num === 5) {
        return this.vDog + this.Cat + this.Bird + this.Spider + this.Fly
    } else if (num === 6) {
        return this.vGoat + this.Dog + this.Cat + this.Bird + this.Spider + this.Fly
    } else if (num === 7) {
        return this.vCow + this.Goat + this.Dog + this.Cat + this.Bird + this.Spider + this.Fly
    } else if (num === 8) {
        return this.vHorse
    }
}

FoodChain.prototype.verses = function(num1, num2) {
    result = ""
    for (var i = num1; i <= num2; i++) {
        result += new FoodChain().verse(i) + "\n"
    }
    return result
}

module.exports = FoodChain;