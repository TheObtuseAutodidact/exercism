var SpaceAge = function(seconds) {
    this.seconds = seconds
};

SpaceAge.prototype.onEarth = function() {
    return Math.round(this.seconds / 60 / 60 / 24 / 365.25 * 100) / 100
};

SpaceAge.prototype.onMercury = function() {
    return Math.round(this.onEarth() / 0.2408467 * 100) / 100 // Mercury solar year 0.2408467/1 of earth's
}

SpaceAge.prototype.onVenus = function() {
    return Math.floor(this.onEarth() / 0.61519726 * 100) / 100 // Venus solar year 0.61519726/1 of earth's
}

SpaceAge.prototype.onMars = function() {
    return Math.round(this.onEarth() / 1.8808158 * 100) / 100 // Mars solar year 1.8808158/1 of earth's
}

SpaceAge.prototype.onJupiter = function() {
    return Math.round(this.onEarth() / 11.862615 * 100) / 100 // Jupiter solar year 11.862615/1 of earth's
}

SpaceAge.prototype.onSaturn = function() {
    return Math.round(this.onEarth() / 29.447498 * 100) / 100 // Saturn solar year 29.447498/1 of earth's
}

SpaceAge.prototype.onUranus = function() {
    return Math.round(this.onEarth() / 84.016846 * 100) / 100 // Uranus solar year 84.016846/1 of earth's
}

SpaceAge.prototype.onNeptune = function() {
    return Math.round(this.onEarth() / 164.79132 * 100) / 100 // Neptune solar year 164.79132/1 of earth's
}

module.exports = SpaceAge;