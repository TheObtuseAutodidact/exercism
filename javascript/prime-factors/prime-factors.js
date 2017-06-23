var PrimeFactors = function() {};

PrimeFactors.for = function(num) {
    solution = [];
    var i = 2;
    while (num > 1) {
        if (num % i === 0) {
            solution.push(i)
            num = num / i;
            i = 1;
        }
        i++
    }
    return solution
}

module.exports = PrimeFactors;