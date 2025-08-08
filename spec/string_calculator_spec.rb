require './lib/string_calculator'


describe StringCalculator do

  before :each do
    @calculator = StringCalculator.new
  end

  context "Given two digits" do 
    it "add the digits" do
      digitsum = @calculator.add("1,2")
      expect(digitsum).to eql(3)
    end
    
    it "should return 0 if string is empty" do
      digitsum = @calculator.add("")
      digitsum.should eql 0
    end
  end
  
end
