module NumericalCalculator
  #Represents a calculator operation on screen
  class CalculatorCli

    def initialize(calculator)
      @calculator = calculator
    end

    def get_input 
      input = Kernel.gets.chomp
    end

    def delegator
      tokens = get_tokens(get_input)
      if tokens[0] == "add" 
        @calculator.add(tokens[1].to_f)
      elsif tokens[0] == "multiply"
        @calculator.multiply(tokens[1].to_f)
      elsif tokens[0] == "subtract"
        @calculator.subtract(tokens[1].to_f)
      elsif tokens[0] == "divide"
        @calculator.divide(tokens[1].to_f)
      else
        :no_operation
      end
    end

    def get_tokens(input)
      input.split(" ")
    end
  end
end
