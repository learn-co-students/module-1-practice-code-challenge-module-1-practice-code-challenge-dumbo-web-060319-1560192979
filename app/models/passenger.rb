class Passenger
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all
    @@all.push self
  end

  def name
    self
  end
  end

# Passenger#name = Returns the name of the passenger = works
# Passenger#rides = Returns an array of Ride instances that this person has been on
# Passenger#drivers
# Returns an array of Driver instances that this person has rode with
# Passenger#total_distance
# Returns the floating number that represents the total distance the passenger has travelled using the service
# Passenger.all
# Returns an array of all Passengers
# Passenger.premium_members
# Returns an array of all Passengers who have travelled over 100 miles in total with the service
#
