#class for Model1 goes here
#Feel free to change the name of the class
class Student
    attr_reader :name

    @@all = []
    def initialize(name)
        @name = name
    end

    def self.all
        @@all
    end
end
