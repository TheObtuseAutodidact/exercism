var alphabet = "abcdefghijklmnopqrstuvwxyz"
var reverse_alphabet = "zyxwvutsrqponmlkjihgfedcba"

var encode = function(str) {
    str = str.toLowerCase()
    var pre_solution_array = [];
    var solution_array = [];
    str.split("").forEach(function(char) {
        if (alphabet.indexOf(char) > -1) {
            pre_solution_array.push(reverse_alphabet[alphabet.indexOf(char)])

        } else if (char.match(/^[a-z0-9]/)) {
            pre_solution_array.push(char.trim())
        }
    });

    pre_solution_array.forEach(function(char, idx) {
        solution_array.push(char)
        if ((idx + 1) % 5 === 0) {
            solution_array.push(" ")
        }
    })

    return solution_array.join("").trim()

}

module.exports = { encode }