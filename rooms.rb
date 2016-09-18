class Room

  attr_reader :name, :capacity, :song_list, :room_singers, :entry_cost, :free_space, :tab

  def initialize(name, input_capacity)
    @name = name 
    @capacity = input_capacity
    @song_list = []
    @room_singers = []
    @entry_cost = 5
    @free_space = input_capacity
    @tab = 0
  end

  def add_guest_as_singer(guest)
    if @room_singers.length < @capacity && guest.money >= 5
      @room_singers << guest 
      guest.give_money(@entry_cost)
      @free_space -= 1
    else 
      return 
    end
  end

  def add_song(song)
    @song_list << song
  end 

  def take_guest_out_of_room(guest)
    @room_singers.delete(guest)
    @free_space += 1
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

  def create_a_tab(amount)
    @tab += amount
  end

end 

