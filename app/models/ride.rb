class Ride
@@all=[]
attr_reader :driver , :passenger, :distance
  def initialize(driver,passenger,distance)
    @driver = driver
    @passenger=passenger
    @distance=distance
    @@all << self
  end

  def self.all
    @@all
  end

  def self.average_distance
    sum=0
    self.all.each{|ride_instance| sum+=ride_instance.distance}
    return sum/(self.all.length)
  end
end
