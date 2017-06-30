var keep = function(collection, callback) {
    return collection.filter(function(item) {
        return callback(item)
    })
};

var discard = function(collection, callback) {
    return collection.filter(function(item) {
        return !callback(item)
    })
};

module.exports = { keep, discard };