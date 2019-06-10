class Driver
    attr_reader :name

    @@all = []
    
    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end

    def rides
        Ride.all.select do |r|
            r.driver == self
        end
    end

    def passenger_names
        self.rides.map do |ride|
            ride.passenger
        end
    end

    def self.mileage_cap(distance)
        drivers = []
        Ride.all.each do |r|
            if r.distance > distance
                drivers << r.driver
            end
        end

        return drivers
    end

end