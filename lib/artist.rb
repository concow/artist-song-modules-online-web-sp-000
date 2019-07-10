Skip to content

Search or jump to…

Pull requests
Issues
Marketplace
Explore

@concow
0
0 130 concow/artist-song-modules-online-web-sp-000
forked from learn-co-students/artist-song-modules-online-web-sp-000
 Code  Pull requests 0  Projects 0  Security  Insights  Settings
artist-song-modules-online-web-sp-000/lib/artist.rb
@concow concow Done.
412776f 1 hour ago
@concow @aviflombaum @sgharms @SophieDeBenedetto
37 lines (27 sloc)  497 Bytes

require 'pry'

class Artist
extend Memorable::ClassMethods

  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def initialize
    @@artists << self
    @songs = []
  end

  def self.find_by_name(name)
    @@artists.detect{|a| a.name == name}
  end

  def self.all
    @@artists
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  def to_param
    name.downcase.gsub(' ', '-')
  end
end
