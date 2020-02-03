require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

farmer1 = Farmer.new("Ted Bundy", "California")
farmer2 = Farmer.new("Ol' McDonald", "Idaho")
farmer3 = Farmer.new("Mike Tyson", "California")
farmer4 = Farmer.new("Amy Adams", "All Around")

produce1 = Produce.new("Blood Orange", "Red", "Fruit")
produce2 = Produce.new("Strawberry", "Red", "Fruit")
produce3 = Produce.new("Kiwi", "Green", "Fruit")
produce4 = Produce.new("Red Pepper", "Red", "Vegetable")
produce5 = Produce.new("Potato", "Brown", "Vegatable")
produce6 = Produce.new("Eggplant", "Purple", "Vegetable")
produce7 = Produce.new("Peach", "Pink", "Fruit")
produce8 = Produce.new("Chiken Breast", "Pink", "Meat")
produce9 = Produce.new("Pork Belly", "Red", "Meat")
produce10 = Produce.new("Ear Bitten Off by a Man", "Brown", "Meat")

store1 = Store.new("Acme", farmer3, produce10, 1)
store2 = Store.new("Giant", farmer1, produce1, 98)
store2 = Store.new("Giant", farmer1, produce1, 98)
store2 = Store.new("Giant", farmer1, produce1, 98)
store2 = Store.new("Giant", farmer1, produce1, 98)
store2 = Store.new("Giant", farmer1, produce1, 98)
store2 = Store.new("Giant", farmer1, produce1, 98)
store2 = Store.new("Giant", farmer1, produce1, 98)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
