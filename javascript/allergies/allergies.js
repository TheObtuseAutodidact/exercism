var Allergies = function(num) {
    this.num = num;
};

Allergies.prototype.list = function() {
    while (this.num > 255) {
        this.num -= 256
    }
    var solution_array = []
    if (this.num - 128 >= 0) {
        solution_array.unshift("cats")
        this.num -= 128;
    }
    if (this.num - 64 >= 0) {
        solution_array.unshift("pollen")
        this.num -= 64;
    }
    if (this.num - 32 >= 0) {
        solution_array.unshift("chocolate")
        this.num -= 32;
    }
    if (this.num - 16 >= 0) {
        solution_array.unshift("tomatoes")
        this.num -= 16;
    }
    if (this.num - 8 >= 0) {
        solution_array.unshift("strawberries")
        this.num -= 8;
    }
    if (this.num - 4 >= 0) {
        solution_array.unshift("shellfish")
        this.num -= 4;
    }
    if (this.num - 2 >= 0) {
        solution_array.unshift("peanuts")
        this.num -= 2;
    }
    if (this.num % 2 === 1) {
        solution_array.unshift("eggs")
        this.num -= 1;
    }
    return solution_array
}

Allergies.prototype.allergicTo = function(item) {
    return (this.list().indexOf(item) > -1)
};

module.exports = Allergies;