#class for Model1 goes here
#Feel free to change the name of the class
class Student
    attr_reader :name

    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def sessions 
        Session.all.select {|sess| sess.student == self}
    end 

    def instructors
        self.sessions.map {|sess| sess.instructor}
    end 
end
