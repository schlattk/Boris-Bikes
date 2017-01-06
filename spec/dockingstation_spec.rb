require "dockingstation"
describe DockingStation do
it {is_expected.to respond_to :release_bike}
it "returns an object of the class bike" do
#  expect(subject.release_bike).to be_instance_of Bike
#  expect(subject.release_bike).to be_working
end
#it {is_expected.to respond_to :dock_bike}
it {is_expected.to respond_to(:dock_bike).with(1).argument }
#it 'accepts a bike for docking' do

#  expect(subject.dock_bike("x")). to include("x")
#end
it {is_expected.to respond_to :show_bikes}
it "should raise an error if dockingstation is empty" do
expect {subject.release_bike}.to raise_error "no bikes available"
end
it "should raise an error if max cap has been reached" do
expect { 21.times {subject.dock_bike Bike.new}}.to raise_error "no more capacity"
end

end
