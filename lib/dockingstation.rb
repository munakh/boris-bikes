require_relative 'bike'

class DockingStation
  attr_accessor :capacity
  DEFAULT_CAPACITY = 20

    def initialize(capacity = DEFAULT_CAPACITY)
      @bikes = []
      @capacity = capacity
    end

    def release_bike
      raise "Dock is empty" if empty?
      bikes.each_with_index {|bike, index| bikes.delete_at(index) ; return bike if bike.working? }
      raise "No good bikes"
    end
    
    
    def dock(bike, working = true)
      raise "Dock is full" if full?
      bike.working = false if !working
      bikes << bike
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
