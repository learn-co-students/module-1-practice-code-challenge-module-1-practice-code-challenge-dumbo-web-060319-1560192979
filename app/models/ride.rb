
class Ride

    attr_accessor :driver, :passenger, :distance
    @@all = []

    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance
        @@all << self
    end

    def self.all
        @@all
    end

    def self.average_distance
        distance_array = []
        Ride.all.each do |ride|
            distance_array << ride.distance
        end
        distance_array.inject(0, :+) / distance_array.length
        
    end


end