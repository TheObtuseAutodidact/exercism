var PerfectNumbers = function() {};

PerfectNumbers.prototype.classify = function(num) {
    if (num < 1) {
        return "Classification is only possible for natural numbers."
    }
    if (num === 1) {
        return "deficient"
    }
    var factors = [];
    var sum = 0;
    for (i = 1; i <= Math.ceil(num / 2); i++) {
        if (num % i === 0) {
            factors.push(i)
        }
    }

    for (var i in factors) { sum += factors[i]; }

    if (sum === num) {
        return "perfect"
    } else if (sum > num) {
        return "abundant"
    } else {
        return "deficient"
    }
}

module.exports = PerfectNumbers