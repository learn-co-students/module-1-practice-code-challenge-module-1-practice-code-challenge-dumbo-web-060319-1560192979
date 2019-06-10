class Passenger
  @@all=[]
  attr_reader :name
  def initialize(name)
    @name = name
    @@all<< self
  end

  def self.all
    @@all
  end

  def rides
    Ride.all.select {|ride_instance| ride_instance.passenger==self}
  end

  def drivers
    self.rides.map{|ride_instance| ride_instance.driver}
  end

  def total_distance
    sum=0
    self.rides.each {|ride_instance| sum+=ride_instance.distance}
    sum
  end

  def self.premium_members
    self.all.select do |passenger_instance|
      passenger_instance.total_distance >100
    end

  end
end
