#class for Model3 goes here
#Feel free to change the name of the class
class Appointment
	attr_reader :doctor, :patient, :cost
	@@all = []
	def initialize(doctor, patient, cost)
		@doctor = doctor
		@patient = patient
		@cost = cost.to_f
		@@all << self
	end

	def self.all
		@@all
	end
end
