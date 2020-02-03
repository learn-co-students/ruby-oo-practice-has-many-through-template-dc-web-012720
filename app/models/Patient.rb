#class for Model2 goes here
#Feel free to change the name of the class
class Patient
	attr_reader :name, :income
	@@all = []
	def initialize(name, income)
		@name = name
		@income = income
		@@all << self
	end

	def self.all
		@@all
	end

	def appointments
		Appointment.all.select do |appt|
			appt.patient == self
		end
	end

	def doctors
		self.appointments.map do |doctor|
			doctor.doctor
		end
	end

	def doctor_field
		self.doctors.map do |doctor|
			doctor.field
		end
	end

	def total_cost
		self.appointments.map do |appt_obj|
			appt_obj.cost
		end.sum
	end

	def treatment(field)
		if self.doctor_field.include?(field)
			return self.doctors.select do |doc|
				doc.field == field
			end.map{|doc| doc.name}
		else
			return "None of your doctors know how to treat that :("
		end
	end

	def can_afford
		if self.total_cost <= self.income
			return true
		else
			p "You are too poor!"
			return false
		end
	end
end
