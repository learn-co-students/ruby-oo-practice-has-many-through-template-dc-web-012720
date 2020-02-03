#class for Model1 goes here
#Feel free to change the name of the class
class Student
    attr_reader :name, :grade
    @@all = []

    def initialize(name, grade)
        @name = name
        @grade = grade
        @@all << self
    end

    def self.all
        @@all
    end

    def clubs
        Membership.all.select do |memberships|
            memberships.student == self
        end
    end

    def self.more_than_one
        self.all.select do |student|
            student.clubs.count > 1
        end
    end

    
    
end
