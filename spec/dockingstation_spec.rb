require 'dockingstation'

describe DockingStation do

    it "instances of DockingStation respond to the method release_bike" do
        expect(DockingStation.new).to respond_to('release_bike')
    end

end