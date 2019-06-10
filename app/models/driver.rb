class Driver
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def passengers_name
    arr = []
    Ride.all.each do |single_ride|
      if single_ride.driver == self
        arr << single_ride.passenger.name
      end
    end
    arr
  end

  def rides 
    Ride.all.select do |single_ride|
      single_ride.driver == self
    end
  end

  def self.mileage(distance)
    Ride.all.select do |single_ride|
      single_ride.distance > distance
    end
  end


end
