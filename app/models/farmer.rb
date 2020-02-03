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

    def self.all
        @@all
    end

    def self.location(location_string)
        self.all.select{|instance| instance.location == location_string}
    end
    # Add existing produce to store
    def ProduceToStore(store_name_string, produce_instance, quantity_integer)
        Store.new(store_name_string, self, produce_instance, quantity_integer)
    end
    # Create a new Produce
    def newProduce(name_string, color_string, category_string)
        Produce.new(name_string, color_string, category_string)
    end
    # Create a new produce and add it to the
    def addNewProduceToStore(store_name_string, produce_name_string, color_string, category_string, quantity_integer)
        k = self.newProduce(produce_name_string, color_string, category_string)
        ProduceToStore(store_name_string, k, quantity_integer)
    end
end
