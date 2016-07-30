class Room
# create a cash register maybe
attr_reader :name, :capacity, :song_list, :room_singers, :entry_cost

def initialize(name, input_capacity)
  @capacity = input_capacity
  @song_list = []
  @room_singers = []
  @entry_cost = 5
  @name = name
end

def add_guest_as_singer(guest)
  if @room_singers.length < @capacity && guest.money >= 5
    @room_singers << guest 
    guest.give_money(@entry_cost)
  else 
    return 
  end
end

def add_song(song)
  @song_list << song
end 

def take_guest_out_of_room(guest)
  @room_singers.delete(guest)
end

def play_a_song(song)
  return "Woo hoo. You're singing #{song.title} really well."
end

def check_if_favourite_song(song)
  @room_singers.each do |singer|
    if singer.favourite_song == song.title
      return "Yay. It's #{singer.name}'s favourite song."
    end
  end
end

def check_available_space
  return @capacity - @room_singers.length
end
  


end 