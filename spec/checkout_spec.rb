require "./lib/solutions/CHK/checkout"

describe Checkout do

  let (:market) { Checkout.new }

  context "#illegal" do
    it "checks to valid items and fails" do
      expect(market.checkout("ABCDZ")).to eq(-1)
    end        
  end

  context "Correct basket sum" do
    it "Adds up a normal basket correctly" do
      expect(market.checkout("ABC")).to eq(100)
    end
  end

end

