require "spec_helper"

module NumericalCalculator
  describe Calculator do
    let(:calculator) { Calculator.new }

    it "will check for initialized value" do
      expect(calculator.accumulator).to eq(0.0)
    end

    context "add" do 
      it "should add value" do   
        expect(calculator.add(2)).to eq(2.0)
      end

      it "should add twice" do
        calculator.add(2)
        expect(calculator.add(3)).to eq(5.0)
      end
    end

    it "multiply with stored value" do
      expect(calculator.multiply(3)).to eq(0.0)
    end
  end
end
