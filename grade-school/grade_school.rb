class School
  def initialize
    @students = []
  end

  def add(student, grade)
    grade_exists = false
    @students.each do |c|
      if c.value?(grade)
        x = c[:students]
        x << student
        c[:students] = x.sort
        return
      end
    end
    @students << { grade: grade, students: [student].sort }
  end

  def students(grade)
    students = []
    @students.each do |c|
      if c.value?(grade)
        students = c[:students]
      end
    end
    students.sort
  end

  def students_by_grade
    @students.sort_by { |hsh| hsh[:grade] }
  end
end

module BookKeeping
  VERSION = 3
end
