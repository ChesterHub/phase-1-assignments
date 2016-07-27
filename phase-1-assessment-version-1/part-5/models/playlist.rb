class Playlist
  attr_accessor :name, :description
  attr_reader :songs, :user

  def initialize(args = {})
    @name = args.fetch(:name)
    @description = args.fetch(:description)
    @user = args.fetch(:user)
    @songs = []
  end

  def add_song(song)
    songs << song
  end

end
