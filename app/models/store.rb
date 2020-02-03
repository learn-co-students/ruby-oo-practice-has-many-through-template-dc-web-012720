#class for Model2 goes here
#Feel free to change the name of the class
class Store
    attr_reader :farmer, :produce, :store_name
    attr_accessor :quantity

    @@all = []

    def initialize(store_name_string, farmer_instance, produce_instance, quantity_integer)
        @store_name = store_name_string
        @farmer = farmer_instance
        @produce = produce_instance
        @quantity = quantity_integer

        @@all << self
    end

    def self.all
        @@all
    end

    def self.store_name(store_string)
        self.all.select{|instance| instance.store_name == store_string}
    end

     def self.quantity(store_string, produce_string)
         self.store_name(store_string).select{|instance| instance.produce.name == produce_string}.map{|x| x.quantity}.sum
     end
end
