require 'dockingstation'

describe DockingStation do
  describe "#release_bike" do
    it "releases a bike" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
  end

    it "raises an error in response to method release_bike when dock is empty" do
      expect{subject.release_bike}.to raise_error("Dock is empty")
    end

    it "responds to the method release_bike" do
      expect(subject).to respond_to :release_bike
    end

    it "docks something" do
      bike = Bike.new
      expect(subject.dock(bike)).to eq bike
    end

    it "raises an error when dock capacity is full" do
      subject.dock(Bike.new)
      expect{subject.dock Bike.new}.to raise_error("Dock is full")
    end

    it "returns docked bikes" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bike).to eq bike
    end

end
