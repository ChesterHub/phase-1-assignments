class Genre

  attr_accessor :name, :description
  attr_reader :songs

  def initialize(args = {})
    @name = args.fetch(:name)
    @description = args.fetch(:descriptions)
    @songs = []
  end

  def add_song(song)
    songs << song
  end
end
