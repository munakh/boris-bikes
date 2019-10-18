require_relative 'bike'

class DockingStation
  attr_accessor :capacity
  DEFAULT_CAPACITY = 20

    def initialize(capacity = DEFAULT_CAPACITY)
      @bikes = []
      @capacity = capacity
    end

    def release_bike
      fail "Dock is empty" if empty?
      bikes.pop
    end
    
    
    def dock(bike)
      fail "Dock is full" if full?
      bikes << bike
      bike
    end
    
    def report_broken
      fail "No good bikes" if broken?
      @broken = true
    end
    
    def broken?
      @broken
    end

   private
    
    attr_reader :bikes

    def full?
      bikes.count >= capacity
    end

    def empty?
      bikes.empty?
    end

end
