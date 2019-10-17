require_relative 'bike'

class DockingStation
  attr_reader :bike

    def initialize
      @bike
      @dockingstation = []
    end

    def release_bike
      fail "Dock is empty" unless @bike
      @bike
    end

    def dock(bike)
      fail "Dock is full" if @bike
      @bike = bike
    end

end
