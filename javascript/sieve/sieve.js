var indexConstructor = function(numberOfIndices) {
    start = [true, true];
    for (var i = 2; i <= numberOfIndices; i++) {
        start.push('x')
    }
    return start
}

var arrayConstructor = function(upperLimit) {
    numbers = [];
    for (var j = 0; j <= upperLimit; j++) {
        numbers.push(j)
    }
    return numbers
}

var Sieve = function(num) {
    this.num = num;
    this.primes = this.getPrimes(this.num);

}

Sieve.prototype.getPrimes = function() {
    numbers = arrayConstructor(this.num);
    indices = indexConstructor(this.num)

    while (indices.indexOf('x') >= 0) {
        var k = indices.indexOf('x')
        indices[k] = true;
        for (var l = k + 1; l <= numbers.length; l++) {
            if (indices[l] === 'x') {
                if (numbers[l] % numbers[k] === 0) {
                    indices[l] = false;
                }
            }
        }
    }
    var solutionArray = [];
    numbers.forEach(function(z) {
        if (indices[z]) {
            solutionArray.push(numbers[z])
        }
    })
    return solutionArray.slice(2)
}

module.exports = Sieve;