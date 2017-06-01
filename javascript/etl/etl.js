var ETL = function() {};

ETL.prototype.transform = function(score_card) {
    var new_obj = {};
    Object.keys(score_card).forEach(function(score) {
        score_card[score].forEach(function(value) {
            new_obj[value.toLowerCase()] = Number(score);
        });
    });
    return new_obj
};

module.exports = ETL;