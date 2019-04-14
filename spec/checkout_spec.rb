require "./lib/solutions/CHK/checkout"

describe Checkout do

  let (:market) { Checkout.new }

  context "#illegal" do

    it "checks to for valid items" do
      expect(market.checkout("Z")).to eq(-1)
    end

  end

end
