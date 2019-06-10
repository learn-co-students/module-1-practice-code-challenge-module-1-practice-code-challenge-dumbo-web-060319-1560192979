class Driver

  attr_accessor
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def passenger_names
    # Returns an array of all Passengers' names a driver has driven. The names should be **unique** (no repeats).
    
  end

  def rides
    # Returns an array of all Rides a driver has made
    Ride.all.select do |ride|
      ride.driver == self
    end
  end

  # Class Methods
  def self.all
    @@all
  end

  def self.mileage_cap
    # Takes an argument of a distance (float) and returns an array of all Drivers who have driven over the mileage
  end

end
