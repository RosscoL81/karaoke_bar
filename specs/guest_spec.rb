require("minitest/autorun")
require("minitest/rg")
require_relative("../guest.rb")
require_relative("../karaoke_bar.rb")

class TestGuest < MiniTest::Test

  def setup
    @karaoke_bar = KaraokeBar.new("Ross's Bar", 5, 500, [@room1, @room2])
    @guest = Guest.new("Danny", 10, "Star Girl")
  end

  def test_guest_has_a_name
    assert_equal("Danny", @guest.name())
  end

  def test_guest_has_wallet
    assert_equal(10, @guest.wallet())
  end

  def test_guest_has_favourite_song
    assert_equal("Star Girl", @guest.favourite_song())
  end

  def test_guest_enters_bar
    @guest.pay_for_entry(@karaoke_bar)
    assert_equal(5, @guest.wallet())
  end
end
