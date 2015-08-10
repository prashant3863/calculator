require "spec_helper"

module NumericalCalculator
  describe Calculator do
    before(:each) do
      @cal = Calculator.new
    end

    context "add" do 
      it "should add value" do   
        expect(@cal.add(2)).to eq(2.0)
      end

      it "should add twice" do
        @cal.add(2)
        expect(@cal.add(3)).to eq(5.0)
      end
    end
  end
end
