class School
  def initialize
    @students = Hash.new { |my_hash, key| my_hash[key] = [] }
  end

  def students(grade)
    @students[grade].sort
  end

  def add(student, grade)
    @students[grade] << student
  end

  def students_by_grade
    student_body = @students.map do |k, v|
      { grade: k, students: v.sort }
    end
    student_body.sort_by { |grade_hash| grade_hash[:grade] }
  end
end

module BookKeeping
  VERSION = 3
end
