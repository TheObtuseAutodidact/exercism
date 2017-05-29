var School = function() {
    this.enrollment = {}
};

School.prototype.roster = function() {
    return this.enrollment;
}

School.prototype.add = function(name, grade_num) {
    if (this.enrollment[grade_num]) {
        this.enrollment[grade_num].push(name)
        this.enrollment[grade_num].sort()
    } else {
        this.enrollment[grade_num] = [name]
    }
}

School.prototype.grade = function(grade_num) {
    return (this.enrollment[grade_num]) ? this.enrollment[grade_num].sort() : []
}

module.exports = School;