class School
  def initialize
    @students = Hash.new{ |h,k| h[k] = [] }
  end

  def add(student, grade)
    @students[grade] << student
  end

  def students(grade)
    @students[grade].sort
  end

  def students_by_grade
    return [] if @students.empty?
    @students.sort.map { |grade, names| { grade: grade, students: names.sort } }
  end
end

module BookKeeping
  VERSION = 3
end
