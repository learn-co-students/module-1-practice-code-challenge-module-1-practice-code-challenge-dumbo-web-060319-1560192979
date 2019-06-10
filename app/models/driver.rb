
class Driver

    attr_accessor :name # Driver deliverable 1

    @@all = []

    def initialize(name)
        @name = name    

        @@all << self
    end

    def self.all
        @@all
    end

    def passenger_names
        # Returns an array of all Passengers' names a driver has driven. 
        # The names should be unique (no repeats).
        Ride.all.map { |ride| ride.passenger.name if ride.driver == self }.uniq.compact
    end

    def rides
        # Returns an array of all Rides a driver has made
        Rides.all.select { |ride| ride.driver == self }
    end

    def self.mileage_cap(distance_cap)
        # Takes an argument of a distance (float) and returns an 
        # array of all Drivers who have driven over the mileage
        Ride.all.select { |ride| ride.driver if ride.distance > distance_cap }
    end
end