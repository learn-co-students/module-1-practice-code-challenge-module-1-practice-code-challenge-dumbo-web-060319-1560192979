class Ride

    attr_accessor :driver, :passenger, :distance # Ride deliverables 1-3

    @@all = []

    # A Ride should be initialized with a driver (as a Driver object), 
    # a passenger (as a Passenger object), and a distance (as a float i.e. 3.2). 
    # The distance refers to miles.

    def initialize(driver, passenger, distance) 
        @driver = driver
        @passenger = passenger
        @distance = distance

        @@all << self
    end

    def self.average_distance
        # Returns the average distance across ALL rides
        total = self.all.inject { |sum, ride| sum += ride.distance }.average
    end

    def self.average_distance2
        # Returns the average distance across ALL rides
        tally = self.all.count
        sum = self.all.inject { |sum, ride| sum += ride.distance }.average

        ans = sum / tally
    end

    def self.all
        @@all
    end
end