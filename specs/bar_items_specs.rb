require('minitest/autorun')
require('minitest/rg')
require_relative('../bar.rb')
require_relative('../guests.rb')
require_relative('../bar_items.rb')


class TestBarItem < MiniTest::Test

  def setup
    @pork_scratchings = BarItem.new("Pork Scratchings", 1.50, 50)
    @vodka_tonic = BarItem.new("Vodka and Tonic", 3.00, 60) 
    @curly_fries = BarItem.new("Curly Fries", 4.00, 60)
    @milkshake = BarItem.new("Milkshake", 3.50, 90)
  end

  def test_item_has_a_name
    assert_equal("Pork Scratchings", @pork_scratchings.name)
  end

  def test_item_has_a_price
    assert_equal(3.50, @milkshake.price)
  end

  def test_item_has_a_quantity
    assert_equal(90, @milkshake.quantity)
  end

end