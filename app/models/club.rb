#class for Model2 goes here
#Feel free to change the name of the class
require "pry"
class Club
    attr_reader :name, :room_number
    @@all = []

    def initialize(name, room_number)
        @name = name
        @room_number = room_number
        @@all << self
    end

    def self.all
        @@all
    end

    def club_size
        Membership.all.select do |memberships|
            memberships.club == self 
        end.count 
    end

    def members 
        Membership.all.select do |memberships|
            if memberships.club == self 
                memberships.student
            end
        end
    end

    def average_grade
        arr = []
        self.members.select do |student| 

            arr << student.student.grade 
        end
        arr.sum.to_f / arr.count.to_f
    end
end
