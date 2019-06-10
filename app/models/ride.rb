
class Ride

  attr_accessor :driver, :passenger, :distance

  @@all = []

  def initialize(driver, passenger, distance=0.0)
    @driver = driver
    @passenger = passenger
    @distance = distance
    self.class.all << self
  end

  # Class Method
  def self.average_distance
    # Returns the average distance across ALL rides

  end

  def self.all
    @@all
  end

end
