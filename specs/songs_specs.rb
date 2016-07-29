require('minitest/autorun')
require('minitest/rg')
require_relative('../songs.rb')

class TestSongs < MiniTest::Test

  def setup
    @africa = Song.new("Africa", "Toto", "Toto IV")
    @in_your_eyes = Song.new("In Your Eyes", "Peter Gabriel", "So")
    @total_eclipse_of_the_heart = Song.new("Total Eclipse of the Heart", "Bonnie Taylor", "Faster than the speed of night")
    @no_limits = Song.new("No Limit", "2 Unlimited", "No Limits")
  end

  def test_song_has_title
    assert_equal("Africa", @africa.title, )
  end

  def test_song_has_an_artist
    assert_equal("Peter Gabriel", @in_your_eyes.artist)
  end

  def test_song_has_album
    assert_equal("Faster than the speed of night", @total_eclipse_of_the_heart.album)
  end

end