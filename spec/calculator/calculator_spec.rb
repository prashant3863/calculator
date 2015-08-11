require "spec_helper"

module NumericalCalculator
  describe Calculator do
    let(:default_calculator) { Calculator.new }
    let(:calculator_with_value_two) { Calculator.new(2) }
    let(:calculator_with_negative_value_two){ Calculator.new(-2) }
    let(:calculator_with_negative_value_three){ Calculator.new(-3) } 
    let(:calculator_with_value_five){ Calculator.new(5) }
    let(:calculator_with_value_four){ Calculator.new(4) }
    let(:calculator_with_value_eight){ Calculator.new(8) }

    context "default values" do
      it "should be zero" do
        expect(default_calculator.accumulator).to eq(0.0)
      end

      it "should be configurable" do
        expect(calculator_with_value_two.accumulator).to eq(2.0)
      end
    end

    context "addition operation" do 
      it "should update accumulator" do
        default_calculator.add(2)
        expect(default_calculator.accumulator).to eq(2.0)
      end

      it "should update non zero positive accumulator" do
        calculator_with_value_two.add(3)
        expect(calculator_with_value_two.accumulator).to eq(5.0)
      end

      it "should update non zero negative accumulator" do
        calculator_with_value_two.add(-1)
        expect(calculator_with_value_two.accumulator).to eq(1.0)
      end
    end

    context "subtraction operation" do 
      it "should update accumulator" do
        default_calculator.subtract(2)
        expect(default_calculator.accumulator).to eq(-2.0)
      end

      it "should update non zero positive accumulator" do
        calculator_with_value_two.subtract(2)
        expect(calculator_with_value_two.accumulator).to eq(0.0)
      end

      it "should update non zero negative accumulator" do
        calculator_with_value_two.subtract(-1)
        expect(calculator_with_value_two.accumulator).to eq(3.0)
      end
    end

    context "multiply operation" do
      it "should update accumulator" do
        default_calculator.multiply(3)
        expect(default_calculator.accumulator).to eq(0.0)
      end

      it "should update non zero accumulator" do
        calculator_with_value_two.multiply(3)
        expect(calculator_with_value_two.accumulator).to eq(6.0)
      end

      it "should update non zero negative accumulator" do
        calculator_with_value_two.multiply(-1)
        expect(calculator_with_value_two.accumulator).to eq(-2.0)
      end
    end

    it "should set accumulator to zero" do
      calculator_with_value_two.cancel
      expect(calculator_with_value_two.accumulator).to eq(0.0) 
    end

    context "division operation" do 
      it "should update accumulator on division" do
        default_calculator.divide(3)
        expect(default_calculator.accumulator).to eq(0.0)
      end

      it "should update non zero positive accumulator" do
        calculator_with_value_two.divide(2)
        expect(calculator_with_value_two.accumulator).to eq(1.0)
      end

      it "should give an error when accumulator is divide by zero" do
        expect(calculator_with_value_two.divide(0)).to eq(:notanumber)
      end

      it "should update non zero negative accumulator" do
        calculator_with_value_two.divide(-2)
        expect(calculator_with_value_two.accumulator).to eq(-1.0)
      end     
    end

    context "absolute value operation" do 
      it "should returns positive value for negative input" do
        calculator_with_negative_value_two.abs
        expect(calculator_with_negative_value_two.accumulator).to eq(2.0)
      end

      it "should returns positive value for positive input" do 
        calculator_with_value_five.abs
        expect(calculator_with_value_five.accumulator).to eq(5.0)
      end 
    end

    context "neg value operation" do 
      it "should negate the positive accumulator" do
        calculator_with_value_five.neg
        expect(calculator_with_value_five.accumulator).to eq(-5.0)
      end

      it "should negate negative acculmulator" do 
        calculator_with_negative_value_two.neg
        expect(calculator_with_negative_value_two.accumulator).to eq(2.0)
      end
    end

    context "Square root operation" do
      it "should sqrt the accumulator" do
        calculator_with_value_four.sqrt
        expect(calculator_with_value_four.accumulator).to eq(2.0)
      end

      it "should give error when accumulator is negative" do
        expect(calculator_with_negative_value_two.sqrt).to eq(:notanumber)
      end 
    end

    context "Cube root operation" do 
      it "should return cube root of the accumulator" do
        calculator_with_value_eight.cubert
        expect(calculator_with_value_eight.accumulator).to eq(2.0)
      end

      it "should give error on negative values" do
        expect(calculator_with_negative_value_two.cubert).to eq(:notanumber)
      end
    end

    context "Square Operation" do 
      it "should return square of a positive accumulator" do 
        calculator_with_value_two.sqr
        expect(calculator_with_value_two.accumulator).to eq(4.0)
      end

      it "should evaluate square for negative accumulator" do
        calculator_with_negative_value_three.sqr
        expect(calculator_with_negative_value_three.accumulator).to eq(9.0)
      end
    end

    context "Cube Operation" do
      it "should return cube of a positive accumulator" do 
        calculator_with_value_two.cube
        expect(calculator_with_value_two.accumulator).to eq(8.0)
      end

      it "should return cube for negative accumulator" do
        calculator_with_negative_value_three.cube
        expect(calculator_with_negative_value_three.accumulator).to eq(-27.0)
      end
    end
  end
end
