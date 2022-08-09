require 'music_library'
require 'track'

RSpec.describe MusicLibrary do
    it "Check search method returns appropriately" do
        track1 = Track.new('abc', 'def')
        track2 = Track.new('123', '456')
        now35 = MusicLibrary.new
        now35.add(track1)
        now35.add(track2)
        result = now35.search('bc')
        expect(result).to eq [track1]
    end
end
