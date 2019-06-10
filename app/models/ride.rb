
class Ride 

    attr_accessor :driver, :passenger, :distance
    @@all = []
    def initialize(driver, passenger, distance)
        @driver = driver 
        @passenger = passenger 
        @distance = distance
        @@all << self
    end

    def passenger 
        @passenger 
    end
    def driver 
        @driver 
    end

    def self.all 
        @@all
    end
    def self.average_distance
        num_of_rides = 0
        total = 0

        while (num_of_rides < @@all.size)
            total = total + @@all[num_of_rides].distance
            num_of_rides += 1 
        end

        answer = total/num_of_rides
    end
end