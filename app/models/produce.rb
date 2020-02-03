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

    def self.all
        @@all
    end

    def self.produce_color(color_string)
        Produce.all.select{|instance| instance.color == color_string}
    end

    def self.category(category_string)
        Produce.all.select{|instance| instance.category == category_string}
    end

    def same_color
        puts self.color
        Produce.all.select{|instance| instance.color == self.color}.map{|x| x.name}
    end
end
