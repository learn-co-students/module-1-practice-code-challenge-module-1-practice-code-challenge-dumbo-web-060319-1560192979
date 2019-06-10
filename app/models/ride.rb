class Ride
    @@all = []
    attr_accessor :passenger, :driver, :distance 
    
    def initialize(passenger, driver, distance)
        @passenger = passenger
        @driver = driver
        @distance = distance
        @@all << self
    end 

    def self.all
        @@all
    end
end 
