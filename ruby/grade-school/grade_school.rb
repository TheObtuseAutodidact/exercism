class School
  def initialize
    @students = {}
  end

  def students(grade)
    return [] unless @students[grade]
    @students[grade].sort
  end

  def add(student, grade)
    @students[grade] ? @students[grade] << student : @students[grade] = [student]
    @students
  end

  def students_by_grade
    return [] unless @students
    student_body = @students.map do |k, v|
      { grade: k, students: v.sort }
    end
    student_body.sort_by { |grade_hash| grade_hash[:grade] }
  end
end

module BookKeeping
  VERSION = 3
end
