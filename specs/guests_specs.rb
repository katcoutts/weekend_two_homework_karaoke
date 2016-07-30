require('minitest/autorun')
require('minitest/rg')
require_relative('../guests.rb')

class TestGuest < MiniTest::Test

  def setup
    @gillian = Guest.new("Gillian", "Africa", 30)
    @charley = Guest.new("Charley", "Total Eclipse of the Heart", 32)
    @hannah = Guest.new("Hannah", "In Your Eyes", 35)
    @katrina = Guest.new("Katrina", "No Limits", 35)
  end
    
  def test_guest_has_a_name
    assert_equal("Gillian", @gillian.name)
  end
    
  def test_guest_has_money
    assert_equal(35, @katrina.money)
  end  


  def test_guest_has_a_favourite_song
    assert_equal("Total Eclipse of the Heart", @charley.favourite_song)
  end

  

end