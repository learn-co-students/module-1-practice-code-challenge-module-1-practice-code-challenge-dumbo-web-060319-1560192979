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
        total_distance = 0
        average_count = 0
        Ride.all.each do |ride|
            total_distance += ride.distance
            average_count +=1
        end 
        average = total_distance / average_count.to_f
        return average
    end 

end 