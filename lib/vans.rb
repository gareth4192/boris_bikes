require_relative 'docking_station'
require_relative 'bike'


class Vans
  include docking_station
  def initialize
    @van_bikes = []
  end

def collect
  release_broken
  garage
end



end
