module NumericalCalculator
  #Represents a numerical calulator
  class Calculator

    attr_reader :accumulator
    
    def initialize
      @accumulator = 0.0
    end

    def add(value)
      @accumulator += value
    end

    def multiply(value)
      0.0
    end
  end
end
