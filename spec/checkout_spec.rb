require "./lib/solutions/CHK/checkout"

describe Checkout do

  let (:market) { Checkout.new }

  context "#validate" do
    it "checks to valid items and fails" do
      expect(market.checkout("ABCDZ")).to eq(-1)
    end
  end

  context "Correct basket value" do
    it "Adds up a normal basket correctly" do
      expect(market.checkout("ABC")).to eq(100)
    end

    it "Adds up a basket with specials correctly" do
      expect(market.checkout("AAABB")).to eq(175)
    end
  end

end
