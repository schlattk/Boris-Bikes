require "dockingstation"
describe DockingStation do
it {is_expected.to respond_to :release_bike}
it "returns an object of the class bike" do
expect(subject.release_bike).to be_instance_of Bike
expect(subject.release_bike.working?).to eq(true)
end
#it "accepts a new bike when dock method called" do
#expect(subject.dock).to
#end
end



#docking_station = DockingStation.new
#describe docking_station.release_bike do
#it {is_expected.to be_instance_of Bike}
#end
