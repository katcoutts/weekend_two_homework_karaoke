require_relative('./guests.rb')
require_relative('./rooms.rb')
require_relative('./songs.rb')
require_relative('./bar.rb')
require_relative('./bar_items.rb')

class Venue

  attr_reader :rooms, :bar

  def initialize(rooms, bar)
    @rooms = rooms
    @bar = bar
  end

  def order_rooms_by_free_space
    @rooms.sort_by {|room| room.free_space}
  end
  
  def assign_room(group_size)
    sorted_rooms = @rooms.sort_by {|room| room.free_space}
    return sorted_rooms.find {|room| room.free_space >= group_size}
  end


end

