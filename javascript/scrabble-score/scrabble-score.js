var dictionary = {
    1: ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"],
    2: ["D", "G"],
    3: ["B", "C", "M", "P"],
    4: ["F", "H", "V", "W", "Y"],
    5: ["K"],
    8: ["J", "X"],
    10: ["Q", "Z"]
}

var score = function(word) {
    if (!word) { return 0 }
    score_sum = 0
    word.split("").forEach(function(letter) {
        Object.keys(dictionary).forEach(function(key) {
            if (dictionary[key].indexOf(letter.toUpperCase()) > -1) {
                score_sum += Number(key)
            }
        })
    })
    return score_sum
}

module.exports = score;