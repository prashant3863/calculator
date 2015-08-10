require 'spec_helper'

module NumericalCalculator 
  describe CalculatorCli do 
    let(:calculator) { Calculator.new }
    let(:cli) { CalculatorCli.new(calculator) }
    
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

    it "should retrun 0.0 when divided 5 is the input" do
      expect(cli.delegator(["divide", "5"])).to eq(0.0)
    end

    it "should return :no_operation when any invalid input is entered" do
      expect(cli.delegator(["invalid", "5"])).to eq(:no_operation)
    end
  end
end
