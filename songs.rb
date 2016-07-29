class Song

  attr_reader :title, :artist, :album

  def initialize(input_title, input_artist, input_album)
    @title = input_title
    @album = input_album
    @artist = input_artist
  end

end