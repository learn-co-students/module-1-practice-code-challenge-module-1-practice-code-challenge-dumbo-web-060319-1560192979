class Ride
    attr_accessor :driver, :passenger, :distance
    @@all = []
    def initialize(driver, passenger, distance = 3.2)
        @driver = driver
        @passenger = passenger
        @distance = distance
        @@all << self
    end

    def self.average_distance
        ####
    end

    def self.all
        @@all
    end
end
