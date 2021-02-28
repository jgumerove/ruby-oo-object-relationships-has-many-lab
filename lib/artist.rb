class Artist
attr_accessor :name

def initialize(name)
    @name =name
end

def songs
    Song.all.select {|song| song.artist == self} #self refers to this artist instance
end

def add_song(song)
    song.artist = self
end

def add_song_by_name(name)
    song = Song.new(name) #Song capitalized to show that referring to a class
    song.artist = self  #self refers to this artist instance
end

def self.song_count
    Song.all.count 
end
  
end