#class for Model3 goes here
#Feel free to change the name of the class
class Instructor
    attr_reader :name
    attr_accessor :subject, :ratings
    @@all = []
    def initialize(name,subject)
        @name = name
        @subject = subject
        @@all << self
        @ratings = []
    end

    def self.all
        @@all
    end

    def self.find_by_subject(subject)
        self.all.select{|instr| instr.subject == subject}
    end

    def self.sort_by_average_rating 
        self.sort_by {|inst| inst.average_rating} 
    end 

    # def self.sorted_in_subject(subject)
    #     self.find_by_subject(subject)
    # end 

    def sessions 
        Session.all.select {|sess| sess.instructor == self}
    end 

    def students 
        self.sessions.map {|sess| sess.student}
    end 

    def add_rating(rating)
        @ratings << rating.to_f
    end

    def average_rating
        @ratings.sum / @ratings.length.to_f
    end
end
