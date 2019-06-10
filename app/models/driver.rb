
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

    end

    def rides
        # Returns an array of all Rides a driver has made

    end

    def self.mileage_cap(distance)
        # Takes an argument of a distance (float) and returns an 
        # array of all Drivers who have driven over the mileage

    end
end