require "spec_helper"

module NumericalCalculator
  describe Calculator do
    it "add value to stored value" do
      cal = Calculator.new
      expect(cal.add(2)).to eq(2.0)
    end
  end
end
