require 'vans.rb'
require 'bike'
require 'docking_station'

describe Vans do
  it 'collects broken bikes from the station' do
    station = DockingStation.new
    bike = Bike.new
    bike.report
    station.dock(bike)
    expect(station.release_broken).to eq bike
  end



end
