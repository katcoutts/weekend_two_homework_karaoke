require('minitest/autorun')
require('minitest/rg')
require_relative('../bar.rb')
require_relative('../guests.rb')
require_relative('../bar_items.rb')


class TestBar < MiniTest::Test

  def setup
    @milkshake = BarItem.new("Milkshake", 3.50, 90)
    @vodka_tonic = BarItem.new("Vodka and Tonic", 3.00, 60)
    items = [@milkshake, @vodka_tonic]
    @my_bar = Bar.new(items)
    @hannah = Guest.new("Hannah", "In Your Eyes", 35)
    @bruce = Guest.new("Bruce", "Hello", 2)
  end

  def test_till_starts_at_zero
    assert_equal(0.0, @my_bar.till)
  end

  def test_can_sell_an_item_If_guest_has_enough
    @my_bar.sell_item(@hannah, @milkshake)
    assert_equal(3.50, @my_bar.till)
    assert_equal(31.50, @hannah.money)
    assert_equal(89, @milkshake.quantity)
  end

  def test_sell_item_guest_not_enough_money
    assert_equal("Sorry, you don't have enough money.", @my_bar.sell_item(@bruce, @vodka_tonic))
  end

end