require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
will = Student.new("Will")
ryan = Student.new("Ryan")
joeseph = Instructor.new("Joeseph","Ruby")
ann = Instructor.new("Ann","Javascript")

sesh1 = Session.new(ann,ryan)
sesh2 = Session.new(ann,will)
sesh3 = Session.new(joeseph,ryan)
binding.pry
0 #leave this here to ensure binding.pry isn't the last line
