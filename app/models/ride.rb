class Ride 
    attr_reader :driver, :passenger, :distance 

    @@all = []

    def initialize(driver, passenger, distance)
        @driver = driver 
        @passenger = passenger 
        @distance = distance #float 

        @@all << self
    end



    def self.all 
        @@all 
    end

    def self.average_distance 
        total_distance = 0 
        number_of_rides = 0
        @@all.each do |ride|
            total_distance += ride.distance 
            number_of_rides += 1
        end
        total_distance / number_of_rides 
    end


end
