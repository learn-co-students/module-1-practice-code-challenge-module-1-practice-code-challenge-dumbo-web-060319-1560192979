class Driver 
    attr_accessor :name, :passengers, :rides
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
            ride.driver == self
        end 
    end 

    def passenger_names
        passengers = self.rides.map { |ride| ride.passenger }.uniq
    end 

    def self.mileage_cap(distance)

    end

end
