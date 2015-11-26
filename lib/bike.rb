require_relative 'docking_station'
class Bike
attr_reader :working

  def initialize
    @working = true
  end

  def report
    @working = false
  end

  def working?
    @working
  end

end
