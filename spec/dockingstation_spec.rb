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

    it "instances of DockingStation respond to the method release_bike" do
      expect(subject).to respond_to :release_bike
    end

    # it "releases working bikes" do
    #   bike = subject.release_bike
    #   expect(bike).to be_working
    # end

    # it "instances of DockingStation respond to the method working?" do
    #   expect(subject.release_bike).to respond_to :working?
    # end

    it "docks something" do
      bike = Bike.new
      expect(subject.dock(bike)).to eq bike
    end

    it "returns docked bikes" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bike).to eq bike
    end
  #end
end
