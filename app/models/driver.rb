class Driver
    @@all = []
    attr_reader :name 
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
end 
