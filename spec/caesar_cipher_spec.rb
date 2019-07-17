require_relative '../lib/caesar_cipher'

describe "the ceasar methode of code " do
  it "should return TRUE when writing a message" do

    expect(text_detector("ba")).to eq(false)
    expect(text_detector(112)).to eq(false)
    expect(text_detector("bega bega")).to eq(true)
  end
end

describe "encoding the text" do
  it "string convertion" do
  	 expect(string_convertion("What a string!", 5)).to eq("Bmfy f xywnsl!")
  	 expect(string_convertion("abc adc",3)).to eq("def dgf")
  	 expect(string_convertion("aadc dce",3)).to eq("ddgf gfh")
  end
end

describe "encoding the message" do
  it "message convertion" do
	expect(caesar_cipher("bla bla",-5)).to eq("it's not the right key you're an idiot
     .Takes numbers between 0 and 25")
	expect(caesar_cipher("bla bla",26)).to eq("it's not the right key you're an idiot
     .Takes numbers between 0 and 25")
    expect(caesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
    expect(caesar_cipher("bla bla", 2)).to eq("dnc dnc")
  end
end