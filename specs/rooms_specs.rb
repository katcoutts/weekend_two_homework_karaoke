require('minitest/autorun')
require('minitest/rg')
require_relative('../rooms.rb')
require_relative('../guests.rb')
require_relative('../songs.rb')

class TestRoom < MiniTest::Test

def setup
  @gillian = Guest.new("Gillian", "McCabe", "Africa", 30)
  @africa = Song.new("Africa", "Toto", "Toto IV")
    
  @room1 = Room.new(20)
end


def test_room_starts_with_no_singers
  assert_equal([], @room1.room_singers)
end

def test_room_starts_with_no_songs
  assert_equal([], @room1.song_list)
end

def test_room_has_a_capacity
  assert_equal(20, @room1.capacity)
end

def test_can_add_guest_to_room
  @room1.add_guest_as_singer(@gillian)
  assert_equal([@gillian], @room1.room_singers)
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

end