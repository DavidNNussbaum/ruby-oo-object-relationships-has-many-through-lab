class Artist
    @@all = []
    attr_accessor :name, :song, :genre
    def initialize(name)
        @name = name
        @song = song
        @genre = genre
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def genres
        songs.map(&:genre)
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end

end
