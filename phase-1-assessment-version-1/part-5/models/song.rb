class Song
  attr_accessor :title, :length
  attr_reader :genres, :playlists, :artist

  def initialize(args = {})
    @artist = args.fetch(:artist)
    @title = args.fetch(:title)
    @length = args.fetch(:length)

    @playlists = []
    @genres = []
  end

  def add_playlist(playlist)
    playlists << playlist
  end

  def add_genre(genre)
    genres << genre
  end

end
