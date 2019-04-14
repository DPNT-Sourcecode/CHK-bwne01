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

    it "Adds up a basket with multiple specials correctly - 7A" do
      expect(market.checkout("AAAAAAA")).to eq(300)
    end

    it "Adds up a basket with multiple specials correctly - 10A" do
      expect(market.checkout("AAAAAAAAAA")).to eq(400)
    end

    it "Adds up a basket with multiple specials correctly - 4A" do
      expect(market.checkout("AAAA")).to eq(180)
    end

    it "Adds up a basket with multiple specials correctly - 3B" do
      expect(market.checkout("BBB")).to eq(75)
    end

    it "Adds up 2E and 1B correctly" do
      expect(market.checkout("EEB")).to eq(80)
    end

    it "Adds up 2E correctly" do
      expect(market.checkout("EE")).to eq(80)
    end
  end

end

