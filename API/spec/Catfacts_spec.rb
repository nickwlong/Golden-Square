require "Catfacts"

RSpec.describe CatFacts do
    it "Checks method provide returns a Cat Fact statement" do
        req_dbl = double(:requester)

        expect(req_dbl).to receive(:get).with(URI("https://catfact.ninja/fact")).and_return('{"fact":"Unlike humans, cats are usually lefties. Studies indicate that their left paw is typically their dominant paw.","length":110}')

        facto1 = CatFacts.new(req_dbl)
        expect(facto1.provide).to eq "Cat fact: Unlike humans, cats are usually lefties. Studies indicate that their left paw is typically their dominant paw."
    end 
end 