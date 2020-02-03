#class for Model1 goes here
#Feel free to change the name of the class
class Farmer
    attr_reader :name, :location
    @@all = []
    
    def initialize(name_string, location_string)
        @name = name_string
        @location = location_string

        @@all << self
    end

end
