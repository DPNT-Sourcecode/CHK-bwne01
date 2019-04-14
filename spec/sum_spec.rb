require './lib/solutions/SUM/sum'

describe Sum do

  it "adds two numbers together" do
    sum = Sum.new
    expect(sum.sum(1,2)).to eq(3)
  end

end
