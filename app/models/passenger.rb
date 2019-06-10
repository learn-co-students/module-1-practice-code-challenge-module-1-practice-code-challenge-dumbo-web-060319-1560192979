class Passenger

    @@all = []

    attr_accessor :name, :driver, :ride

    def initialize(name, driver, ride)
        @name = name
        @driver = driver
        @ride = ride
        @@all << self 
    end 

    def self.all
        @@all 
    end 

    def get_drivers
        drivers.all.select do |driver|
        end 
    end 



end 
