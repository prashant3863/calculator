require "spec_helper"

module NumericalCalculator
  describe Calculator do
    let(:default_calculator) { Calculator.new }
    let(:calulator_with_value_two) { Calculator.new(2) }

    context "default values" do
      it "should be zero" do
        expect(default_calculator.accumulator).to eq(0.0)
      end

      it "should be configurable" do
        expect(calulator_with_value_two.accumulator).to eq(2.0)
      end
    end

    context "addition operation" do 
      it "should update accumulator" do   
        expect(default_calculator.add(2)).to eq(2.0)
      end

      it "should update non zero positive accumulator" do
        expect(calulator_with_value_two.add(3)).to eq(5.0)
      end

      it "should update non zero negative accumulator" do
        expect(calulator_with_value_two.add(-1)).to eq(1.0)
      end
    end

    context "multiply operation" do
      it "should update accumulator" do
        expect(default_calculator.multiply(3)).to eq(0.0)
      end

      it "should update non zero accumulator" do
        expect(calulator_with_value_two.multiply(3)).to eq(6.0)
      end

      it "should update non zero negative accumulator" do
        expect(calulator_with_value_two.multiply(-1)).to eq(-2.0)
      end
    end

    it "should set accumulator to zero" do
      calulator_with_value_two.cancel
      expect(calulator_with_value_two.accumulator).to eq(0.0) 
    end
  end
end
