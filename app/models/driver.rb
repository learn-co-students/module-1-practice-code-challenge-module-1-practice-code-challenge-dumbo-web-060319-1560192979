class Driver
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    #Because the following returns an array of all the rides a driver has made I must access that data from the joint source because the current array merely pushes an instance of all the drives without the details of the ride.

    def rides
        Ride.all.map {|ride| ride if ride.driver == self}
    end

    def passenger_names 
        Ride.all.map {|ride| ride.passenger.name if ride.driver == self}.uniq
    end

    def self.mileage_cap(distance)
        Ride.all.map {|ride| ride.driver if ride.distance > distance}
    end

    def self.all
        @@all
    end

end
