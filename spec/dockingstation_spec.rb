require 'dockingstation'

describe DockingStation do
  
  it "responds to release_bike" do
    expect(subject).to respond_to(:release_bike)
  end
    
  it "responds to dock(bike)" do
    expect(subject).to respond_to(:dock)
  end
  
  describe "initialization" do
    subject { DockingStation.new }
    let(:bike) { Bike.new }
    it "defaults capacity" do
      DockingStation::DEFAULT_CAPACITY.times do
        subject.dock(bike)
      end
      expect{ subject.dock(bike) }.to raise_error("Dock is full")
    end
    
  end
  
  describe "#release_bike" do
    
    it "releases a bike" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
    
    it "raises an error in response to #release_bike when dock is empty" do
      expect{subject.release_bike}.to raise_error("Dock is empty")
    end
    
  it "release a working bike" do
    subject.dock Bike.new
    expect(subject.release_bike).to be_working
  end
    
  it "raises an error when no good bikes are available" do
    bike = subject.release_bike
    bike.report_broken
    expect{subject.release_bike}.to raise_error("No good bikes")
  end
  
end
  
  describe "dock" do
    
    it "docks bikes" do
      bike = Bike.new
      expect(subject.dock(bike)).to eq bike
    end
    
    it "has a default capacity" do
      expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
    end
    
    it "raises an error when dock capacity is full" do
      subject.capacity.times { subject.dock "bike" }
      expect{subject.dock :bike}.to raise_error("Dock is full")
    end
    
  end
  
end
