#class for Model2 goes here
#Feel free to change the name of the class
class Session
    attr_reader :student, :instructor
    @@all = []
    
    def initialize(instructor, student)
        @instructor = instructor
        @student = student
        @@all << self
    end
    
    def self.all
        @@all
    end

end
