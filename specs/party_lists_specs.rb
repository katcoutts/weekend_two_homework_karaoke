require('minitest/autorun')
require('minitest/rg')
require_relative('../party_lists.rb')
require_relative('../songs.rb')

class TestPartyList < MiniTest::Test

  def setup

    take_on_me = Song.new("Take On Me", "a-ha")
    thriller = Song.new("Thriller", "Michael Jackson")
    girls_fun = Song.new("Girls Just Want to Have Fun", "Cyndi Lauper")
    sweet_dreams = Song.new("Sweet Dreams", "Eurythmics")
    dont_stop = Song.new("Don't Stop Believin'", "Journey")

    songs = [take_on_me, thriller, girls_fun, sweet_dreams, dont_stop]

    @eighties_party = PartyList.new("80's Party", songs)
  end

  def test_party_list_has_songs
    assert_equal(5, @eighties_party.songs.length)
  end

end
