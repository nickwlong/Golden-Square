require "music_library"

RSpec.describe MusicLibrary do
    it "Returns all tracks added to the library" do
        now34 = MusicLibrary.new
        faketrack1 = double :faketrack
        faketrack2 = double :faketrack
        now34.add(faketrack1)
        now34.add(faketrack2)
        expect(now34.all).to eq [faketrack1, faketrack2]
    end

    it "Searches tracks by title" do
        now34 = MusicLibrary.new
        faketrack1 = double :faketrack, matches?: true
        faketrack2 = double :faketrack, matches?: false
        now34.add(faketrack1)
        now34.add(faketrack2)
        expect(now34.search('anything')).to eq [faketrack1] 
    end
end

        