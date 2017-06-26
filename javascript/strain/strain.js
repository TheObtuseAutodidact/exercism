var keep = function(collection, callback) {
    var keep_collection = [];
    for (var i = 0; i < collection.length; i++) {
        if (callback(collection[i])) {
            keep_collection.push(collection[i])
        }
    }
    return keep_collection
};

var discard = function(collection, callback) {
    var discard_collection = [];
    for (var i = 0; i < collection.length; i++) {
        if (!callback(collection[i])) {
            discard_collection.push(collection[i])
        }
    }
    return discard_collection
};

module.exports = { keep, discard };