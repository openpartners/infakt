class CountElements
    def initialize(array)
        @array = array
    end
    
    def perform
        counts = Hash.new(0)
        @array.each { |element| counts[element] += 1 }
        counts
    end
end
