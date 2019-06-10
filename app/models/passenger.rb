class Passenger
    @@all = []
    # @@rides = []
    # @@drivers = []
    
    attr_reader :name

    def initialize(name)
        @name = name
        @rides = []
        @drivers = Driver
        #@@rides = Ride
        @@all << self
    end 

    def name 
        @name 
    end 

    def rides(ride)
        #returns an array of ride instances this person has been on
        @rides << Ride.new(ride)
            #spent the last 20 minutes trying to get this to work so i could get the other similar methods working. 
            #but couldn't figure out how to return an array of object instances
    end 

    def drivers
        #returns an array of Driver instances that this person has rode with
        @@drivers
    end 

    def total_distance
        #Returns the floating number that represents the total distance the passenger has travelled using the service
    end 

    def self.all 
        @@all
    end 

    def self.premium_members
        #Returns an array of all Passengers who have travelled over 100 miles in total with the service
    end 

end 

