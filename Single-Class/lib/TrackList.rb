class TrackList
    def initialize
        @tracklist = []
    end

    def add(track) 
        @tracklist << track
    end

    def list
        fail "Tracklist is empty" if @tracklist.empty?
        @tracklist
    end
end

