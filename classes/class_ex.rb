class Song
  attr_accessor :name, :album,:artist
  @@count = 0
  def initialize(name, album, artist)
    @name = name
    @album = album
    @artist = artist
    @@count += 1
  end
  p self
  def self.count
    @@count
  end
  def songop
    return self
  end
end
class Playlist
  attr_accessor :user, :playlist
  def initialize(user, playlist)
    @user = user
    @playlist = playlist
    
  end

  def display_playlist
    for ele in 0...playlist.length
      puts "#{playlist[ele].name}"
    end
    puts"#{playlist.length}"
  end
 end
class BollywoodSong < Song
  attr_accessor :name, :album,:artist, :language
  @@count = 0 
  def initialize(name, album, artist, language)
    super(name, album, artist)
    @language = language
    @@count += 1
  end
 def song_lang
   p @language
#   puts disp_song
   #count
  end
 
 def self.count_songs(song)
   @@count
   song
end 
 def show_play
   p "hello"
   count_songs("song3")
  end
 def disp_song
  puts count_songs
   song_lang
 end
end
class Foo
  @count = 0
  def initialize()
  end
  
  def self.count
    @count += 1
  end
end
class Bar < Foo
  @count
end
Foo.count
