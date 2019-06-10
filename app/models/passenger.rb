class Passenger 
    attr_reader :name 

    @@all = []
    
    def initialize(name)
        @name = name

        @@all << self
    end

    def rides 
        Ride.all.select { |ride| ride.passenger == self }
    end

    def drivers 
        rides.map { |ride| ride.driver }
    end

    def total_distance 
        total_distance = 0 
        rides.each { |ride| total_distance += ride.distance }
        total_distance
    end



    #class methods
    def self.all 
        @@all 
    end

    def self.premium_members 
        @@all.select { |passenger| passenger.total_distance > 100 }
    end



end
