
class Passenger

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def rides
       #what is the source of all my rides? Ride.all
       Ride.all.select do |ride|
        ride.passenger = self
       end 
        
    end

    def drivers
        #returns array of drivers this person has rode with
        #again, what is the source where I can find all drivers, Ride.all
        
      Ride.all.select do |ride|
       
      end
    end

    def total_distance
    end

    def self.premium_members
    end


end