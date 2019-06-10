class Passenger
    attr_reader = :name
    @@all = []
    @@premium_members = []
    def initialize(name)
        @name = name
        @@all<<name
    end
    def rides
        Ride.all.select{|rides| rides.passenger == self}
    end
    def drivers
        rides.map{|pr| pr.driver }
    end
    def total_distance
        sum = 0
        distance_array=rides.map{|total_distance|total_distance.distance}
        distance_array.map { |a| sum+=a }
        sum
        end
    def self.all
        @@all
    end
    def self.premium_members
        @@premium_members
        ###
    end


end