class Artist

  attr_reader :name, :songs

  def initialize(args = {})
    @name = args.fetch(:name)
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

end