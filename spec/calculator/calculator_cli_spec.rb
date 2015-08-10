require 'spec_helper'

module NumericalCalculator 
  describe CalculatorCli do 
    let(:calculator) { Calculator.new }
    let(:cli) { CalculatorCli.new(calculator) }
    
    it 'should get input' do
      allow(Kernel).to receive(:gets).and_return("add 5")
      expect(cli.get_io).to eq("add 5")
    end

    it "should do foo" do
      allow(Kernel).to receive(:gets).and_return("add 5")
      expect(cli.get_input).to eq(5.0)
    end
  end
end
