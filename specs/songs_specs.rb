require('minitest/autorun')
require('minitest/rg')
require_relative('../songs.rb')

class TestSongs < MiniTest::Test

  def setup
    @africa = Song.new("Africa", "Toto")
    @in_your_eyes = Song.new("In Your Eyes", "Peter Gabriel")
    @total_eclipse_of_the_heart = Song.new("Total Eclipse of the Heart", "Bonnie Taylor")
    @no_limits = Song.new("No Limit", "2 Unlimited")
  end

  def test_song_has_title
    assert_equal("Africa", @africa.title, )
  end

  def test_song_has_an_artist
    assert_equal("Peter Gabriel", @in_your_eyes.artist)
  end

 



end