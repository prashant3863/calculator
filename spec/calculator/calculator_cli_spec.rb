require 'spec_helper'

module NumericalCalculator 
  describe CalculatorCli do 
    let(:cli) { CalculatorCli.new }
    
    it 'should get input' do
      allow(Kernel).to receive(:gets).and_return("add 5")
      expect(cli.get_io).to eq("add 5")
    end
  end
end
