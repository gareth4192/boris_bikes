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
  fail 'No bikes' if empty?
  fail 'Bike is broken' unless bikes.any?{|bike| bike.working?}#if all bikes are broken
  bikes.delete(bikes.find {|bike| bike.working?})
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
