require_relative 'bike'

class DockingStation
  attr_reader :bike
  attr_accessor :capacity
  DEFAULT_CAPACITY = 20

    def initialize(capacity = DEFAULT_CAPACITY)
      @bikes = []
      @capacity = capacity
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
      @bikes.count >= @capacity
    end

    def empty?
      @bikes.empty?
    end

end
