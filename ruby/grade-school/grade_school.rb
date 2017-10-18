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
    @students.keys.sort.map do |grade_level|
      { grade: grade_level, students: students(grade_level) }
    end
  end
end

module BookKeeping
  VERSION = 3
end
