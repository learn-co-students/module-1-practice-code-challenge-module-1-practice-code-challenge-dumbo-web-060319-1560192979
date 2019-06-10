class Driver
  
  attr_reader :name

  @@all = []

  def initialize (name)
  	@name = name
  	@@all << self
  end

  def rides
  	Ride.all.select {|ride| ride.driver == self}
  end

  def passenger_names 
  	self.rides.map {|ride| ride.passenger}
  end

  def self.all
  	@@all
  end

  def self.mileage_cap(distance)
  	rides = Ride.all.select {|ride| ride.distance > distance}
  	rides.map {|ride| ride.driver}
  end
end
