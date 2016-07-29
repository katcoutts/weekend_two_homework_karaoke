class Guest

  attr_reader :first_name, :surname, :favourite_song, :money

  def initialize(input_first_name, input_surname, input_favourite_song, input_money)
    @first_name = input_first_name
    @surname = input_surname
    @favourite_song = input_favourite_song
    @money = input_money
  end


end