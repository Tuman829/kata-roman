#require "./app.rb"
describe "romanize" do
	context "given 5" do
		it "returns 'V'" do
			expect(romanize(5)).to eql("V")
		end
	end
	context "given 61" do
		it "return 'LXI'" do
			expect(romanize(61)).to eql("LXI")
		end
	end
	context "given 99" do
		it "return 'XCIX'" do
			expect(romanize(99)).to eql("XCIX")
		end
	end
end
describe "arabicize" do 
	context "given 'V'" do
		it "returns 5" do
			expect(arabicize("V")).to eql(5)
		end
	end
	context "given '61'" do
		it "return 'LXI'" do
			expect(arabicize("LXI")).to eql(61)
		end
	end
	context "given 99" do
		it "return 'XCIX'" do
			expect(arabicize("XCIX")).to eql(99)
		end
	end
end