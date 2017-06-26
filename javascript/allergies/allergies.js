allergin_list = ["eggs", "peanuts", "shellfish", "strawberries", "tomatoes", "chocolate", "pollen", "cats"]

var Allergies = function(num) {
    this.num = num;
};

Allergies.prototype.list = function() {
    while (this.num > 255) {
        this.num -= 256
    }
    var solution_array = []

    for (var i = 7; i >= 0; i--) {
        if (Math.pow(2, i) <= this.num) {
            solution_array.unshift(allergin_list[i])
            this.num -= Math.pow(2, i)
        }
    }
    return solution_array
}

Allergies.prototype.allergicTo = function(item) {
    return (this.list().indexOf(item) > -1)
};

module.exports = Allergies;