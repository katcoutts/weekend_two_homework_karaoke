require('minitest/autorun')
require('minitest/rg')

require_relative('../venue.rb')
require_relative('../rooms.rb')
require_relative('../guests.rb')

class TestVenue < MiniTest::Test

  def setup
    @room_1 = Room.new("Room 1", 5)
    @room_2 = Room.new("Room 2", 16)
    @room_3 = Room.new("Room 3", 8)
    @room_4 = Room.new("Room 4", 20)

    @rooms = [@room_1, @room_2, @room_3, @room_4]
    my_bar = Bar.new(0)
    @my_venue = Venue.new(@rooms, my_bar)

    @charley = Guest.new("Charley", "Total Eclipse of the Heart", 32)
  end



  def test_number_of_rooms
    assert_equal(4, @my_venue.rooms.length)
  end

  def test_can_sort_rooms_by_free_space
    assert_equal([@room_1, @room_3, @room_2, @room_4], @my_venue.order_rooms_by_free_space)
  end

  def test_can_assign_group_size_to_best_room   
    assert_equal(@room_3, @my_venue.assign_room(6))
  end



end

