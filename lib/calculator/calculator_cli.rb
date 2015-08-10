module NumericalCalculator
  #Represents a calculator operation on screen
  class CalculatorCli

    def initialize(calculator)
      @calculator = calculator
    end

    def get_io 
      input = Kernel.gets.chomp
    end

    def get_input
      tokens = get_tokens(get_io)
      @calculator.add(tokens[1].to_f);
    end

    private
    def get_tokens(input)
      input.split(" ")
    end
  end
end
