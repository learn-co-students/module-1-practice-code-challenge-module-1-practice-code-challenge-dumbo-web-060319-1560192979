class Passenger 
    attr_accessor :name

    @@all = []

    def initialize(name)
    @name = name
    @@all << self
    end 

    def rides
        Ride.all.map {|ride| ride.passenger == self}
    end

    def drivers 
        Ride.all.map {|ride| ride.diver if ride.passenger == self}
    end

    def total_distance
       distance_array = Ride.all.map {|ride| ride.distance if ride.passenger == self}
       distance_array.inject(0, :+)
    end

    def self.all
        @@all
    end

    def self.premium_members
        passenger_array = Ride.all.map {|ride| ride.passenger.name}.uniq
        Ride.all.map {|ride, } #AHHHHH almost done, but that is time :-( sad face, yo
    end

end


