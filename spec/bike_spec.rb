require 'bike'

describe Bike do

    it "instances of Bike respond to the method 'working?'" do
    expect(Bike.new).to respond_to('working?')
    end
    
end