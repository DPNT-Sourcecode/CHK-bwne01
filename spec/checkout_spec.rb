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

    it "Adds up a basket with multiple specials correctly - 6A" do
      expect(market.checkout("AAAAAA")).to eq(260)
    end

    it "Adds up a basket with multiple specials correctly - 4A" do
      expect(market.checkout("AAAA")).to eq(180)
    end

    it "Adds up a basket with multiple specials correctly - 3B" do
      expect(market.checkout("BBB")).to eq(75)
    end
  end

end

