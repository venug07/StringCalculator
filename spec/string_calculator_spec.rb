require './lib/string_calculator.rb'


describe StringCalculator do

  before :each do
    @calculator = StringCalculator.new
  end

  context "Given two digits" do 
    it "add the digits" do
      digitsum = @calculator.add("1,2")
      expect(digitsum).to eql(3)
    end
  end
  
end
