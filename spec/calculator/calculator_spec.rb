require "spec_helper"

module NumericalCalculator
  describe Calculator do
    let(:default_calculator) { Calculator.new }
    let(:paramaterized_calculator) { Calculator.new(2) }

    context "initialize" do
      it "will check for initialized value" do
        expect(default_calculator.accumulator).to eq(0.0)
      end

      it "it should initialised with a input value" do
        expect(paramaterized_calculator.accumulator).to eq(2.0)
      end

    end

    context "add" do 
      it "should add value" do   
        expect(default_calculator.add(2)).to eq(2.0)
      end

      it "should add twice" do
        default_calculator.add(2)
        expect(default_calculator.add(3)).to eq(5.0)
      end
    end

    context "multiply" do
      it "checks with default accumulator value" do
        expect(default_calculator.multiply(3)).to eq(0.0)
      end

      it "checks with non zero accumulator value" do
        expect(paramaterized_calculator.multiply(3)).to eq(6.0)
      end
    end

    it "should make the accumulator to 0" do
      paramaterized_calculator.cancel
      expect(paramaterized_calculator.accumulator).to eq(0.0) 
    end
  end
end
