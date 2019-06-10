class Ride
  attr_accessor :driver, :passenger, :distance

  @@all = []

  def initialize(driver, passenger, distance)
    @driver = driver
    @passenger = passenger
    @distance = distance
    @@all << self
  end

  def self.average_distance
    average_number = 0
    self.all.each do |single_ride|
      average_number += single_ride.distance
    end
    average_number / self.all.length
  end

  def self.all
    @@all
  end



end