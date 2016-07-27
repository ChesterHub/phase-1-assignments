class User

  attr_accessor :first_name, :last_name
  attr_reader :playlists

  def initialize(args = {})
    @first_name = args.fetch(:first_name)
    @last_name = args.fetch(:last_name)
    @playlists = []
  end

  def add_playlist(playlist)
    playlists << playlist
  end

end
