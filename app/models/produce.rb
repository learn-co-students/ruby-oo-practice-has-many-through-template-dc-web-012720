#class for Model3 goes here
#Feel free to change the name of the class
class Produce
    attr_reader :name, :color, :category
    @@all = []

    def initialize(name_string, color_string, category_string)
        @name = name_string
        @color = color_string
        @category = category_string

        @@all << self
    end
end
