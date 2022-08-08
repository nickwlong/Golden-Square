require "TrackList"

RSpec.describe TrackList do
    it "Checks one item added and listed" do
        augustplaylist = TrackList.new
        augustplaylist.add("Radiohead - Exit Music")
        result = augustplaylist.list
        expect(result).to eq ["Radiohead - Exit Music"]
    end
    
    it "Checks two items added and listed" do
        augustplaylist = TrackList.new
        augustplaylist.add("Radiohead - Exit Music")
        augustplaylist.add("Scatman John - Scatman")
        result = augustplaylist.list
        expect(result).to eq ["Radiohead - Exit Music", "Scatman John - Scatman"] 
    end

    context "When tracklist is empty and list is called" do
        it "fails" do
            augustplaylist = TrackList.new
            expect { augustplaylist.list }.to raise_error "Tracklist is empty"
        end
    end
end
