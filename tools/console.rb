require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

doctor1 = Doctor.new("jason")
doctor2 = Doctor.new("paul")

patient1 = Patient.new("Park")
patient2 = Patient.new("Kim")

appointment1 = Appointment.new(doctor1, patient1, 135)
appointment2 = Appointment.new(doctor1, patient2, 250)
appointment3 = Appointment.new(doctor2, patient1, 50)




binding.pry
0 #leave this here to ensure binding.pry isn't the last line
