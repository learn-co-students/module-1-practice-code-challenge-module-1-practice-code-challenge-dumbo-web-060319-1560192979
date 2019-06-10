class Driver 
    attr_reader :name 

    @@all = []

    def initialize(name)
        @name = name 

        @@all << self
    end

    def rides 
        Ride.all.select { |ride| ride.driver == self }
    end

    def passenger_names
        rides.map { |ride| ride.passenger }.uniq
    end

    #helper method to find total distance of a driver instance
    def total_distance 
        total_distance = 0 
        rides.each { |ride| total_distance += ride.distance }
        total_distance
    end


    #class methods 
    def self.all 
        @@all 
    end

    def self.mileage_cap(distance)
        @@all.select { |driver| driver.total_distance > distance }
    end

    


end
