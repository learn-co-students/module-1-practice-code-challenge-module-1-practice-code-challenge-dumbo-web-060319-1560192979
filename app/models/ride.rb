class Ride
  attr_accessor :driver, :passenger, :distance
  @@all = []

  def initialize(name)
    @name = name
    @driver = driver
    @passenger = passengers
    @distance = distance
    @@all
    self.class.all << self
  end


  end
