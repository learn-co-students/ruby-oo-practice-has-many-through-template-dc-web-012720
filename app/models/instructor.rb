#class for Model3 goes here
#Feel free to change the name of the class
class Instructor
    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name
    end

    def self.all
        @@all
    end
end
