require 'dockingstation'

describe DockingStation do

    it "instances of DockingStation respond to the method release_bike" do
      expect(subject).to respond_to :release_bike
    end

    it "releases working bikes" do
      bike = subject.release_bike
      expect(bike).to be_working
    end

    it "instances of DockingStation respond to the method working?" do
      expect(subject.release_bike).to respond_to :working?
    end

end
