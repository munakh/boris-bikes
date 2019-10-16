require 'bike'

describe Bike do

    it "instances of Bike respond to the method be_working" do
    expect(Bike.new).to respond_to('working?')
    end

    it "instances of DockingStation respond to the method dock" do
      expect(Bike.new).to respond_to('dock')
    end

end
