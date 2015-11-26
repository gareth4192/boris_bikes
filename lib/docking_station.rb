require_relative 'bike'


class DockingStation
  DEFAULT_CAPACITY = 20

  attr_reader :bikes
  attr_accessor :capacity

def initialize(capacity=DEFAULT_CAPACITY)
  @bikes = []
  @capacity = capacity
end

def release_bike
  fail "no bikes" if empty?
  @bikes.pop
end

def dock(bike)
  fail "error full" if full?
  @bikes << bike
end

private
def empty?
  @bikes.size == 0 ? true : false
end

def full?
  @bikes.size >= @capacity ? true : false
end

end
