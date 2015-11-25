require 'docking_station'

describe DockingStation do
it {is_expected.to respond_to :release_bike}



it {is_expected.to respond_to(:dock).with(1).argument}


it "Should show a docked bike" do
bike = Bike.new
subject.dock(bike)
expect(subject.dock(bike)).to eq bike
end


describe '#release_bike' do
  it 'releases a bike' do
    bike=Bike.new
    subject.dock(bike)
    expect(subject.release_bike).to eq bike
  end
end





end
