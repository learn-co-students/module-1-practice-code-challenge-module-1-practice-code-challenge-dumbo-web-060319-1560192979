class Passenger
    @@all = []
    attr_reader :name 
    def initialize(name)
        @name = name 
        @@all << self
    end 

    def self.all
        @@all
    end 

    def rides
        Ride.all.select do |r|
            r.passenger == self
        end 
    end

    def drivers
        rides.map do |r|
        end
    end 

end 
