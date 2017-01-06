

class DockingStation

  attr_reader :bikes

  def initialize(bikes = [])

    @bikes = bikes

  end
  def release_bike
    if empty? == true
     raise "no bikes available"
   else
    @bikes.pop
  end
  end

  def dock_bike(x)
    if full? == false
      bikes << x
    else
    raise "no more capacity"
    end
end

  def show_bikes
    @bikes
  end

private

def full?
  bikes.length > 19
end

def empty?
  bikes.empty?
end

end
