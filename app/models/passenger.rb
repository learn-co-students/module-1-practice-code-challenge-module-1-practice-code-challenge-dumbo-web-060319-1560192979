
class Passenger

    attr_reader :name
    @@all = []
    @rides_taken = []

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
        Ride.all.select do |ride|
            if ride.passenger == self
                ride.driver
            end
        end
    end

    def total_distance
        distance_array = []
        Ride.all.select do |ride|
            if ride.passenger == self
           distance_array << ride.distance
            end
        end
        distance_array.inject(0, :+)

    end

    def self.premium_members
        Ride.all.select do |ride|
            



end