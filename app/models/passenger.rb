class Passenger
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def rides 
    Ride.all.select do |single_ride|
      single_ride.passenger == self
    end
  end

  def drivers
    arr = []
    Ride.all.each do |single_ride|
      if single_ride.passenger == self
        arr << single_ride.driver.name
      end
    end
    arr
  end

  def total_distance
    total_distance = 0
    Ride.all.each do |single_ride|
      if single_ride.passenger == self
        total_distance += single_ride.distance
      end
    end
    total_distance
  end

  def self.premium_members
    arr = []
    Ride.all.each do |single_ride|
      if single_ride.distance >= 100
        arr << single_ride.passenger.name
      end
    end
    arr
  end

  def self.all
    @@all
  end


end