require "./lib/cypher.rb"

describe Cyphers do
    let!(:c) {Cyphers.new}
    describe "#caeser" do
        it "makes a caeser cypher given a string of text and a number" do
            expect(c.caeser("cat", 1)).to eq("dbu")
            expect(c.caeser("cat", 26)).to eq("cat")
            expect(c.caeser("", 20)).to eq("")
            expect(c.caeser("cat",-1)).to eq("bzs")
        end
    end
end