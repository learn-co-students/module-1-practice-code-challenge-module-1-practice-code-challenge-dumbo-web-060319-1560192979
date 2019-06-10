class Driver
    attr_accessor :name
    @@all=[]

    def initialize(name)
        @name = name 
    end

    def passenger_names
        Ride.all.map{|name| name.passenger}.uniq
    end

    def rides
        Ride.all.map{|driver_rides| driver_rides.rides}
    end

    def self.all
        @@all
    end 

    def self.mileage_cap(distance)
    end

end
