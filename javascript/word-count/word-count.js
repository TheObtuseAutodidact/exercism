var Words = function() {};

Words.prototype.count = function(string) {
    var string_arr = string.toLowerCase().split(/[^\u00C0-\u1FFF\u2C00-\uD7FF\w']/)
    var solution = Object.create(null)

    string_arr.forEach(function(word) {
        if (word) {
            if (word[0] === "\"" || word[0] === "'") {
                word = word.slice(1, -1)
            }
            if (solution[word]) {
                solution[word] += 1
            } else {
                solution[word] = 1
            }
        }
    })
    return solution
}

module.exports = Words;