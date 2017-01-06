

class DockingStation

  attr_reader :bikes

  def initialize(bikes = [])

    @bikes = bikes

  end
  def release_bike
    if bikes.empty?
     raise "no bikes available"
   else
    @bikes
  end
  end

  def dock_bike(x)
    if bikes.empty?
    if x.instance_of? Bike
      bikes.push(x)
    end
  else raise "no more capacity"
  end
end

  def show_bikes
    @bikes
  end
end
