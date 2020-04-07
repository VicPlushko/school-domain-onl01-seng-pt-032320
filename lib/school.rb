class School
  attr_accessor :name, :roster
  
  def initialize(school)
    @name = name
    @roster = {}
  end
  
  def add_student(student_name, grade)
    roster[grade] ||= []
    roster[grade] << student_name
  end
  
  def grade(grade)
    roster.select do |g, s|
      if g == grade
        return s
      end
    end
  end
  
  def sort
    new_roster = {}
    roster.each do |grade, student|
      new_roster[grade] = student.sort
   end
 new_roster
  end
 end