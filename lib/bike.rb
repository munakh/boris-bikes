require_relative 'dockingstation'

class Bike
    
    attr_accessor :working
    
    def initialize(working=true)
      @working = working
    end
    
    def working?
      working
    end

end
