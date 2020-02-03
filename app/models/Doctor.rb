#class for Model1 goes here
#Feel free to change the name of the class
class Doctor
	attr_reader :name, :field
	@@all = []
	def initialize(name, field)
		@name = name
		@field = field
		@@all << self
	end

	def self.all
		@@all
	end

	def appointments
		Appointment.all.select do |appt|
			appt.doctor == self
		end
	end

	def patients
		self.appointments.map do |pat|
			pat.patient
		end
	end


end
