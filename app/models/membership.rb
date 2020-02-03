#class for Model3 goes here
#Feel free to change the name of the class
class Membership
    attr_reader :student, :club
    @@all = []

    def initialize(student, club)
        @student = student
        @club = club
        @@all << self
    end

    def self.all
        @@all
    end

    def delete
        Membership.all.delete(self)
    end
  
end
