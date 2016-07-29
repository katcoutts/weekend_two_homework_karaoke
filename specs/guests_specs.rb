require('minitest/autorun')
require('minitest/rg')
require_relative('../guests.rb')

class TestGuest < MiniTest::Test

  def setup
    @gillian = Guest.new("Gillian", "McCabe", "Africa", 30)
    @charley = Guest.new("Charley", "Lawton", "Total Eclipse of the Heart", 32)
    @hannah = Guest.new("Hannah", "Stewart", "In Your Eyes", 35)
    @katrina = Guest.new("Katrina", "Coutts", "No Limits", 35)
  end
    
  def test_guest_has_a_first_name
    assert_equal("Gillian", @gillian.first_name)
  end
    
  def test_guest_has_money
    assert_equal(35, @katrina.money)
  end  

  def test_guest_has_a_surname
    assert_equal("Stewart", @hannah.surname)
  end

  def test_guest_has_a_favourite_song
    assert_equal("Total Eclipse of the Heart", @charley.favourite_song)
  end
  

end