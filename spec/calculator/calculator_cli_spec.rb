require 'spec_helper'

module NumericalCalculator 
  describe CalculatorCli do 
    let(:calculator) { Calculator.new }
    let(:cli) { CalculatorCli.new(calculator) }


    let(:calculator_with_value_negative_two) { Calculator.new(-2) }
    let(:cli_two) { CalculatorCli.new(calculator_with_value_negative_two) }
    
    it 'should get input' do
      allow(Kernel).to receive(:gets).and_return("add 5")
      expect(cli.get_input).to eq("add 5")
    end

    it "should return 5.0 when add 5 is the input" do
      expect(cli.delegator(["add", "5"])).to eq(5.0)
    end

    it "should return 0.0 when multiply 6 is the input" do
      expect(cli.delegator(["multiply", "6"])).to eq(0.0)
    end

    it "should return -5.0 when subtract 5 is the input" do
      expect(cli.delegator(["subtract", "5"])).to eq(-5.0)
    end

    it "should return 0.0 when divide 5 is the input" do
      expect(cli.delegator(["divide", "5"])).to eq(0.0)
    end

    it "should return 2.0 when abs is called on accumulator with value -2" do
      expect(cli_two.delegator(["abs"])).to eq(2.0)
    end

    it "should return 2.0 when neg is called on accumulator with value -2" do
      expect(cli_two.delegator(["neg"])).to eq(2.0)
    end

    it "should return 4.0 when sqr is called on accumulator with value -2" do
      expect(cli_two.delegator(["sqr"])).to eq(4.0)
    end

    it "should return :no_operation when any invalid input is entered" do
      expect(cli.delegator(["invalid", "5"])).to eq(:no_operation)
    end
  end
end
