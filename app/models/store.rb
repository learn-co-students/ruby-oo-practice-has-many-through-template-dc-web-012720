#class for Model2 goes here
#Feel free to change the name of the class
class Store
    attr_reader :farmer, :produce, :name
    attr_accessor :quantity

    @@all = []

    def initialize(name_string, farmer_instance, produce_instance, quantity_integer)
        @name = name_string
        @farmer = farmer_instance
        @produce = produce_instance
        @quantity = quantity_integer

        @@all << self
    end
end
