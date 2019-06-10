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
        Ride.all.select { |ride| ride.driver if ride.passenger == self }
    end


    def total_distance
        # Returns the floating number that represents the total distance 
        # the passenger has travelled using the service
        total = 0
        
        self.rides.each { |ride| total += ride.distance }

        total
    end

    def self.premium_members
        # Returns an array of all Passengers who have travelled 
        # over 100 miles in total with the service
        self.all.map { |passenger| passenger if passenger.total_distance > 100 }
    end


end
