# code here!
require 'pry'
class School
    attr_accessor :roster
    def initialize(name)
        @name = name     
        @roster = {}   
    end

    def add_student(student_name, grade)
        #binding.pry()
#        @roster[student_name] = grade
        if(@roster[grade] == nil)
            @roster[grade] = []
        end        
        @roster[grade].push(student_name)
        #binding.pry()
    end

    def grade(gradeToRetrieve)
       @roster[gradeToRetrieve] 
    end

    def sort
        @roster.each{|key,value|
            @roster[key] = value.sort
    }
    end
end



school = School.new("Bayside High School")
school.add_student("Zach Morris", 9)
puts school.roster