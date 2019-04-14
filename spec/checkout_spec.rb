require "./lib/solutions/CHK/checkout"

describe Checkout do

  let (:market) { Checkout.new }

  context "#illegal" do

    it "checks to valid items and fails" do
      expect(market.checkout("ABCDZ")).to eq(-1)
    end

    it "checks for valid items and passes" do
      expect(market.checkout("ADCCB")).to eq("Valid")
    end

  end

end



