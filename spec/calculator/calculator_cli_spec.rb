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
      allow(Kernel).to receive(:gets).and_return("add 5")
      expect(cli.delegator).to eq(5.0)
    end

    it "should return 0.0 when multiply 6 is the input" do
      allow(Kernel).to receive(:gets).and_return("multiply 6")
      expect(cli.delegator).to eq(0.0)
    end

    it "should return -5.0 when subtract 5 is the input" do
      allow(Kernel).to receive(:gets).and_return("subtract 5")
      expect(cli.delegator).to eq(-5.0)
    end

    it "should retrun 0.0 when divided 5 is the input" do
      allow(Kernel).to receive(:gets).and_return("divide 5")
      expect(cli.delegator).to eq(0.0)
    end
  end
end
