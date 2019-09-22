require("minitest/autorun")
require("minitest/rg")
require_relative("../karaoke_bar")
require_relative("../guest")
require_relative("../room")
require_relative("../song")

class KaraokeBarTest < MiniTest::Test

  def setup
    @karaoke_bar = KaraokeBar.new("Ross's Bar", 5, 500, [@room1, @room2])

    @room1 = Room.new("McFly Room", 3, [@song1, @song2], [@guest1, @guest2])
    @song1 = Song.new("Obviously")
    @song2 = Song.new("Sorry's not good enough")
    @guest1 = Guest.new("Danny", 10, "Star Girl")
    @guest2 = Guest.new("Harry", 20, "Obviously")
    @guest3 = Guest.new("Tom", 30, "Love is on the radio")
    @guest4 = Guest.new("Dougie", 40, "Five colours in her hair")

    @room2 = Room.new("Stereophonics Room", 3, [@song1, @song2], [@guest1, @guest2])
    @song3 = Song.new("Dakota")
    @song4 = Song.new("Just Looking")
    @song5 = Song.new("A Thousand trees")
    @guest5 = Guest.new("Kelly", 100, "Bartender and the thief")
    @guest6 = Guest.new("Richard", 25, "Mr Writer")
    @guest7 = Guest.new("Adam", 35, "Dakota")
    @guest8 = Guest.new("Jamie", 10, "Have a nice day")
  end


  def test_bar_has_name
    assert_equal("Ross's Bar", @karaoke_bar.name)
  end

  def test_bar_has_till
    assert_equal(500, @karaoke_bar.till)
  end

  def test_bar_has_entry_price
    assert_equal(5, @karaoke_bar.price)
  end

  def test_bar_has_rooms
    assert_equal(2, @karaoke_bar.rooms_count)
  end

  def test_bar_allows_guest_in
    @guest4.pay_for_entry(@karaoke_bar)
    @karaoke_bar.guest_enters_bar(@karaoke_bar)
    assert_equal(35, @guest4.wallet())
    assert_equal(505.00, @karaoke_bar.till())
  end


end
