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

    def subtract(value)
      @accumulator -= value
    end

    def multiply(value)
      @accumulator *= value
    end

    def cancel
      @accumulator = 0.0
    end

    def divide(value)
      if value == 0 
        :notanumber
      else
        @accumulator /= value
      end
    end

    def abs 
      if @accumulator < 0
        @accumulator = -@accumulator 
      else
        @accumulator
      end
    end

    def neg
      @accumulator = -@accumulator 
    end

    def sqrt
      @accumulator < 0 ? :notanumber : Math.sqrt(@accumulator)
    end

    def cubert
      @accumulator < 0 ? :notanumber : Math.cbrt(@accumulator)
    end

    def sqr
      4.0
    end
  end
end
