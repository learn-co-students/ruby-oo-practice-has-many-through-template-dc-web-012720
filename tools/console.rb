require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#Test Data
carl = Student.new("Carl", 12)
valentin = Student.new("Valentin", 9)
joseph = Student.new("Joseph", 11)

coding_club = Club.new("Coding Club", 123)
sports_club = Club.new("Sports Club", 124)
cooking_club = Club.new("Cooking Club", 133)

membership1 = Membership.new(carl, coding_club)
membership2 = Membership.new(valentin, cooking_club)
membership3 = Membership.new(joseph, sports_club)
membership4 = Membership.new(valentin, coding_club)
membership5 = Membership.new(carl, cooking_club)
membership6 = Membership.new(carl, sports_club)






binding.pry
0 #leave this here to ensure binding.pry isn't the last line
