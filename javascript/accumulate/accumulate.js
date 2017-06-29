var accumulate = function(collection, accumulator) {
    return collection.map(function(item) {
        return accumulator(item)
    })
};

module.exports = accumulate;