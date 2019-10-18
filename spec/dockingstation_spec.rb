require 'dockingstation'

describe DockingStation do
  # Creating bike double and allowing it to access variable 'working'
  let(:bike) { double :bike }
  
  describe "#release_bike" do
    
    # Testing releasing bike
    it "responds to release_bike" do
      expect(subject).to respond_to(:release_bike)
    end
    
    # Testing docking bike then releasing same bike
    it "releases a bike" do
      allow(bike).to receive(:working?).and_return(true)
      subject.dock bike
      expect(subject.release_bike).to eq bike
    end
    
    # Testing releasing only working bike
    it "release a working bike" do
      allow(bike).to receive(:working?).and_return(true)
      subject.dock(bike)
      expect(subject.release_bike).to be_working
    end
    
    # Testing error when docking station is empty
    it "raises an error when docking station is empty" do
      expect{subject.release_bike}.to raise_error("Dock is empty")
    end

  end

  describe "#initialize" do
    
    # Testing default capacity
    it "has a default capacity" do
      expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
    end
    
    # Testing override default capacity
    it "allows user to set capacity" do
      station = DockingStation.new(50)
      expect(station.capacity).to eq 50
    end
    
  end
  
  describe "#dock" do
    
    # Testing dock method responding with 1 argument
    it "responds to dock(bike)" do
      expect(subject).to respond_to(:dock).with(1).argument
    end
    
    # Testing docking bike
    it "docks bikes" do
      allow(bike).to receive(:working?)
      expect(subject.dock(bike)).to eq [bike]
    end
    
    # Testing error when docking station is full
    it "raises an error when docking station capacity is full" do
      subject.capacity.times { subject.dock(bike) }
      expect{subject.dock(bike)}.to raise_error("Dock is full")
    end
    
  end
  
end