require 'docking_station'

describe DockingStation do
it {is_expected.to respond_to :release_bike}

it "Should release a bike and the bike should be working" do
bike=subject.release_bike
expect(bike).to be_working
end

it {is_expected.to respond_to(:dock).with(1).argument}


it "Should show a docked bike" do
bike = Bike.new
subject.dock(bike)
expect(subject.dock(bike)).to eq bike
end






end
