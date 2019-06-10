class Driver

    attr_accessor :name 

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def passenger_names
        #where can I find my passengers? 
    end

    def rides
    
    end

    def self.mileage_cap(distance)
    end

end
