require('minitest/autorun')
require('minitest/rg')
require_relative('../rooms.rb')
require_relative('../guests.rb')
require_relative('../songs.rb')

class TestRoom < MiniTest::Test

def setup
  @gillian = Guest.new("Gillian", "Africa", 30)
  @john = Guest.new("John", "Money for Nothing", 4)
  @charley = Guest.new("Charley", "Total Eclipse of the Heart", 32)
  @africa = Song.new("Africa", "Toto")
    
  @room1 = Room.new("Room 1", 16)
  @room2 = Room.new("Room 2", 4)
  @room3 = Room.new("Room 3", 8)
  @room4 = Room.new("Room 4", 8)

end


def test_room_starts_with_no_singers
  assert_equal([], @room1.room_singers)
end

def test_room_starts_with_no_songs
  assert_equal([], @room1.song_list)
end

def test_room_has_a_capacity
  assert_equal(16, @room1.capacity)
end

def test_can_add_guest_to_room_if_enough_money
  @room1.add_guest_as_singer(@gillian)
  assert_equal([@gillian], @room1.room_singers)
  assert_equal(15, @room1.free_space)
end

def test_wont_add_guest_to_room_if_not_enough_money
  @room1.add_guest_as_singer(@john)
  assert_equal([], @room1.room_singers)
end

def test_can_charge_guest
  @room1.add_guest_as_singer(@gillian)
  assert_equal( 25, @gillian.money)
end

def test_can_add_song_to_room
  @room1.add_song(@africa)
  assert_equal([@africa], @room1.song_list)
end

def test_can_take_guest_out_of_room
  @room1.add_guest_as_singer(@gillian)
  @room1.take_guest_out_of_room(@gillian)
  assert_equal([], @room1.room_singers)
end 

def test_room_can_play_a_song
  assert_equal("Woo hoo. You're singing Africa really well.", @room1.play_a_song(@africa))
end

def test_can_check_for_favourite_song
  @room1.add_guest_as_singer(@gillian)
  @room1.add_guest_as_singer(@john)
  assert_equal("Yay. It's Gillian's favourite song.",   @room1.check_if_favourite_song(@africa))
end

def test_can_create_a_tab
  @room1.create_a_tab(30)
  assert_equal(30, @room1.tab)
end




end

