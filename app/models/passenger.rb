class Passenger
    attr_reader :name
    
    @@all = []

    def initialize(name)
        @name = name
        
        @@all << self
    end

    def self.all
        @@all
    end

    def self.premium_members

    end

    def rides
        Ride.all.select do |r|
            r.passenger == self
        end
    end

    def drivers
        self.rides.map do |ride|
            ride.driver
        end
    end

    # total_distance is a class method
    # would have interated over the Ride.all array to get answer

    def total_distance
        total = 0
        premium_members = []
        distance = self.rides.each do |ride|
            total += ride.distance
            if total > 100 
                ride.
            else
                return "Sorry, not a premium member."
            end 
        end
    end 

    
    
end