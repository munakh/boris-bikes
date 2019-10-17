require_relative 'bike'

class DockingStation
  attr_reader :bike, :DEFAULT_CAPACITY
  DEFAULT_CAPACITY = 20

    def initialize
      @bikes = []
    end

    def release_bike
      fail "Dock is empty" if empty?
      @bikes.pop
    end

    def dock(bike)
      fail "Dock is full" if full?
      @bikes << bike
    end

    private

    def full?
      @bikes.count >= DEFAULT_CAPACITY
    end

    def empty?
      @bikes.empty?
    end

end
