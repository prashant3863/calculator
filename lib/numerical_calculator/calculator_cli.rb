module NumericalCalculator
  #Represents a calculator operation on screen
  class CalculatorCli

    def initialize(calculator)
      @calculator = calculator
    end

    def get_input 
      input = Kernel.gets.chomp
    end

    def delegator(tokens)
      if tokens[0] == "add" 
        @calculator.add(tokens[1].to_f)
      elsif tokens[0] == "multiply"
        @calculator.multiply(tokens[1].to_f)
      elsif tokens[0] == "subtract"
        @calculator.subtract(tokens[1].to_f)
      elsif tokens[0] == "divide"
        @calculator.divide(tokens[1].to_f)
      elsif tokens[0] == "abs"
        @calculator.abs
      elsif tokens[0] == "neg"
        @calculator.neg
      elsif tokens[0] == "sqr"
        @calculator.sqr
      elsif tokens[0] == "cube"
        @calculator.cube
      elsif tokens[0] == "cancel"
        @calculator.cancel
      elsif tokens[0] == "exit"
        "exit"
      else
        :no_operation
      end
    end

    def infinite_input
      while(tokens = get_tokens(get_input))
        output = delegator(tokens)
        if output == "exit"
          Process.exit
        elsif output == :no_operation
          puts "No Operation"
        else
          puts output
        end
      end
    end

    private
    def get_tokens(input)
      input.split(" ")
    end
  end
end
