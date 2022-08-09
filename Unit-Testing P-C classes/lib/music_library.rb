class MusicLibrary
    def initialize
      @tracklist = []
    end
  
    def add(track) 
      @tracklist << track
    end
  
    def all
      @tracklist
    end
    
    def search(keyword) 
        return @tracklist.select do |track|
            track.matches?(keyword)
        end
    end
  end