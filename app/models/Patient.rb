#class for Model2 goes here
#Feel free to change the name of the class
class Patient
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
			appt.patient == self
		end
	end

	def doctor
		self.appointment.map do |doctor|
			doctor.doctor
		end
	end

	def cost
		self.appointment.map do |appt_obj|
			appt_obj.cost
		end
	end
end
