class Room

  attr_reader :capacity, :song_list, :room_singers

  def initialize(input_capacity)
    @capacity = input_capacity
    @song_list = []
    @room_singers = []
  end

  def add_guest_as_singer(guest)
    @room_singers << guest if @room_singers.length < @capacity
  end

  def add_song(song)
    @song_list << song
  end 

  def take_guest_out_of_room(guest)
    @room_singers.delete(guest)
  end

  


end 