require_relative '../acronymize'

describe '#acronymize' do
  it 'return an empty string when passed and empty string as argument' do
    actual = acronymize('')
    expected = ''
    expect(actual).to eq(expected)
  end

  it "should return the capitalized first letter of each word" do
    actual = acronymize('oh my god')
    expected = 'OMG'
    expect(actual).to eq(expected)
  end

  it "Should return the capitalized first letter of each word if everything is upcase" do
    actual = acronymize("YOU ONLY LIVE ONCE")
    expected = "YOLO"
    expect(actual).to eq(expected)
  end
end
