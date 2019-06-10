class Passenger
    attr_accessor :name, :driver, :rides
    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end 

    def self.all
        @@all 
    end 

    def rides 
        Ride.all.select do |ride|
            ride.passenger == self
        end 
    end 

    def drivers
        Driver.all.select do |driver|
            driver.rides.select do |ride|
                ride.passenger == self
            end
        end
    end 

    def total_distance
        total = 0
        self.rides.each do |ride|
            total += ride.distance 
        end 
        return total
    end 

    def self.premium_members
        self.all.select do |passenger|
            passenger.total_distance > 100
        end
    end 

end 