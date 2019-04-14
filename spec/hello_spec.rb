require "./lib/solutions/HLO/hello"

describe Hello do

  it "says 'Hello, World!'" do
    greet = Hello.new
    expect(greet.hello("Luke")).to eq("Hello, Luke!")
  end

end
