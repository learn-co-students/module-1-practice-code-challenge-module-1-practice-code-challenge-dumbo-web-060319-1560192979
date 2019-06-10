
class Driver
  attr_reader :name
  @@all=[]
  def initialize(name)
    @name = name
    @@all<< self
  end

  def self.all
    @@all
  end

  def passenger_names
    arr=Ride.all.select{|ride_instance| ride_instance.driver==self}
    arr.map{|ride_instance| ride_instance.passenger}.uniq
  end

  def rides
    arr=Ride.all.select{|ride_instance| ride_instance.driver == self}
  end

  def self.mileage_cap(distance)
    arr=[]
   @@all.each do |driver_ins|
     sum=0
   driver_ins.rides.each do |ride_instance|
     sum+=ride_instance.distance
    end
    arr << driver_ins if sum > distance
    end
    arr
end
end
