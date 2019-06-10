class Ride
    attr_accessor :passenger, :driver, :distance

    #I chose to keep the distance out of the initialization becuase when the ride is initialized the distance is yet to be determined. Once the ride is complete we can use the inherent setter method established by the accessor macro to give Ride_instance.distance = distance value in a potentially floating numbers.

    @@all = []

    def initialize(passenger, driver)
        @passenger = passenger
        @driver = driver
        @distance = distance
        @@all << self
    end

    def passenger
        self.passenger
    end

    def driver
        self.driver
    end

    def self.average_distance
        distance_array = @@all.map {|ride| ride.distance}
        distance_array.inject(0.0) { |sum, el| sum + el } / distance_array.size
    end

end
