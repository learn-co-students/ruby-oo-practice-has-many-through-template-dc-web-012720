require_relative '../config/environment.rb'
require 'pp'

def reload
  load 'config/environment.rb'
end

doctor1 = Doctor.new("jason", "CS")
doctor2 = Doctor.new("paul", "Biology")
doctor3 = Doctor.new("jenny", "Chemistry")
doctor4 = Doctor.new("joseph", "Accounting")
doctor5 = Doctor.new("ann", "Teaching")

patient1 = Patient.new("Park", 10)
patient2 = Patient.new("Kim", 50)
patient3 = Patient.new("Lee", 500)
patient4 = Patient.new("Jung", 255)

appointment1 = Appointment.new(doctor1, patient1, 135)
appointment2 = Appointment.new(doctor1, patient2, 250)
appointment3 = Appointment.new(doctor2, patient1, 50)
appointment4 = Appointment.new(doctor3, patient3, 80)
appointment5 = Appointment.new(doctor4, patient2, 280)
appointment6 = Appointment.new(doctor5, patient4, 20)
appointment7 = Appointment.new(doctor5, patient3, 80)
appointment8 = Appointment.new(doctor3, patient4, 100)

# pp Doctor.all

# pp Patient.all

# pp Appointment.all

# pp doctor1.appointment

# pp doctor1.patient

# pp patient1.appointments

# pp patient1.doctors

p patient1.doctor_field



p patient1.treatment("CS")
p patient1.treatment("Teaching")

p patient1.total_cost
p patient1.income
p patient1.can_afford






binding.pry
0 #leave this here to ensure binding.pry isn't the last line
