module NumericalCalculator
  #Represents a numerical calulator
  class Calculator

    def initialize
      @value = 0.0
    end

    def add(number)
      @value += number
      @value
    end

  end
end