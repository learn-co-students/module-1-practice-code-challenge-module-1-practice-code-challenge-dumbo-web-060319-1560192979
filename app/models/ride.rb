class Ride
    attr_accessor :driver, :passenger, :distance

    @@all = []

    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance.to_f

        @@all << self
    end

    def self.all
        @@all
    end 

    def self.average_distance
        total = 0
        self.all.each do |ride|
            total += ride.distance 
        end
        average = total/self.all.length
        return average
    end

end