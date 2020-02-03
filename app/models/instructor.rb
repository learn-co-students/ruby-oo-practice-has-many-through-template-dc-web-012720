#class for Model3 goes here
#Feel free to change the name of the class
class Instructor
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
        Sessions.all.select {|sess| sess.instructor == self}
    end 

    def students 
        self.sessions.map {|sess| sess.student}
    end 
end
