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
      tokens = get_tokens(get_io)
      if tokens[0] == "add" 
        @calculator.add(tokens[1].to_f);
      else
        @calculator.multiply(tokens[1].to_f);
      end
    end

    def get_tokens(input)
      input.split(" ")
    end
  end
end
