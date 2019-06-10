
class Driver

    attr_reader :name
    @@all = []
    @customers = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def passenger_names
        array = []
        Ride.all.each do |ride|
            if ride.driver == self
                array << ride.passenger.name
            end
            
        end
        return array.uniq!
    end

    def rides
        Ride.all.select do |ride|
            ride.driver == self
        end
    end

    def self.mileage_cap(distance)
        Ride.all.select do |ride|
           if ride.distance > distance 
            ride.driver
           end
        end
    end


end