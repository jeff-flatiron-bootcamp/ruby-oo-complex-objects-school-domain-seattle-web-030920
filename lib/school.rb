# code here!

class School
    attr_accessor :roster
    def initialize(name)
        @name = name     
        @roster = {}   
    end

    def add_student(student_name, grade)
        if(@roster[grade] == nil)
            @roster[grade] = []
        end        
        @roster[grade].push(student_name)        
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