require_relative '../encrypt.rb'

describe "#encrypt" do
  it "should return an empty string when passed an empty string" do
    actual = encrypt("")
    expected = ""
    expect(actual).to eq(expected)
  end

  it "should correctly encrypt a message" do
    actual = encrypt("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG")
    expected = "QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD"
    expect(actual).to eq(expected)
  end
end

describe "#decrypt" do
  it "should return an empty string when passed an empty string" do
    actual = decrypt("")
    expected = ""
    expect(actual).to eq(expected)
  end

  it "should correctly encrypt a message" do
    actual = decrypt( "QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD")
    expected = "THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG"
    expect(actual).to eq(expected)
  end
end
