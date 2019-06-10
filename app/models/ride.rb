class Ride
    attr_accessor :driver, :passenger, :distance

    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance
    end

    def distance
    #Returns the distance of the ride
    @distance = distance.to_f
    end 

    def self.average_distance
    #Returns the average distance across ALL rides
    end 
end
