class Passenger

    attr_reader :name # Passenger deliverable 1

    @@all = []

    def initialize(name)
        @name = name    

        @@all << self
    end

    def self.all
        @@all
    end

    def rides
        # Returns an array of Ride instances that this person has been on
        Ride.all.select { |ride| ride.passenger == self }
    end

    def drivers
        # Returns an array of Driver instances that this person has rode with

    end

    def total_distance
        #Returns the floating number that represents the total distance 
        # the passenger has travelled using the service

    end

    def self.premium_members
        # Returns an array of all Passengers who have travelled 
        # over 100 miles in total with the service

    end


end
