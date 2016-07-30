require('minitest/autorun')
require('minitest/rg')

require_relative('../venue.rb')
require_relative('../rooms.rb')
require_relative('../guests.rb')

class TestVenue < MiniTest::Test

  def setup
    room_1 = Room.new(5)
    room_2 = Room.new(8)
    room_3 = Room.new(16)
    room_4 = Room.new(20)

    rooms = [room_1, room_2, room_3, room_4]
    @my_venue = Venue.new(rooms)

    @charley = Guest.new("Charley", "Total Eclipse of the Heart", 32)
  end



  def test_number_of_rooms
    assert_equal(4, @my_venue.rooms.length)
  end




end

