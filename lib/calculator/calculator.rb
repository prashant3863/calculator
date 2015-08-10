module NumericalCalculator
  #Represents a numerical calulator
  class Calculator

    attr_reader :accumulator

    def initialize(value = 0.0)
      @accumulator = value
    end

    def add(value)
      @accumulator += value
    end

    def multiply(value)
      @accumulator *= value
    end

    def cancel
      @accumulator = 0.0
    end
  end
end
