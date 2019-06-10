class Passenger

  attr_accessor
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def rides
    #Returns an array of Ride instances that this person has been on
    Ride.all.select do |ride|
      ride.user == self
    end

  end

  def drivers
    # Returns an array of Driver instances that this person has rode with
    Ride.all.select do |ride|
      self.ride.driver == self
    end
  end

  def total_distance
    # Returns the floating number that represents the total distance the passenger has travelled using the service
    # itirate trhough rides and select 
  end

  # Class Methods
  def self.all
    @@all
  end

  def self.premium_members
    # Returns an array of all Passengers who have travelled over 100 miles in total with the service
  end
end
