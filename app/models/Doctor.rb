#class for Model1 goes here
#Feel free to change the name of the class
class Doctor
	attr_reader :name
	@@all = []
	def initialize(name)
		@name = name
		@@all << self
	end

	def self.all
		@@all
	end

	def appointment
		Appointment.all.select do |appt|
			appt.doctor == self
		end
	end

	def patient
		self.appointment.map do |pat|
			pat.patient
		end
	end
end
