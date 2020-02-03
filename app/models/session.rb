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

    def rate_instructor(stars)
        if stars.class != Integer || stars > 5 || stars < 1
            puts "Please enter a number 1-5"
        else
            self.instructor.add_rating(stars)
        end
    end

end
