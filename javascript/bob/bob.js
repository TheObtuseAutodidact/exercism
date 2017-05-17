var Bob = function(){};

Bob.prototype.hey = function(input) {
    input = input.trim();
    if (input === input.toUpperCase() && input.toUpperCase() !== input.toLowerCase()) {
        return "Whoa, chill out!"
    } if (input.endsWith("?")) {
        return "Sure."
    } else if (!input) {
        return "Fine. Be that way!"
    } else {
        return "Whatever."
    }
};

module.exports = Bob;

// Bob is a lackadaisical teenager. In conversation, his responses are very limited.

// Bob answers 'Sure.' if you ask him a question.

// He answers 'Whoa, chill out!' if you yell at him.

// He says 'Fine. Be that way!' if you address him without actually saying
// anything.

// He answers 'Whatever.' to anything else.
