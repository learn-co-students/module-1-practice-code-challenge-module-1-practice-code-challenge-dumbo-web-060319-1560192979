class Passenger
    attr_reader :name

    @@all = []

    def initialize(name)
    @name = name
    @@all << self
    end

    #class_methods
    def self.all
        @@all
    end

    def self.premium_members
        #Returns an array of all Passengers who have travelled over 100 miles in total with the service
    end


    #instance_methods

    def rides
    #Returns an array of Ride instances that this person has been on
    my_ride = Ride.new
    all_my_rides = []
    Ride.passenger = self
    all_rides << my_ride
    all_rides
    end

    def drivers
    # Returns an array of Driver instances that this person has rode with

    end

    def total_distance
    #Returns the floating number that represents the total distance the passenger has travelled using the service
    end 

end

