require("minitest/autorun")
require("minitest/rg")
require_relative("../guest.rb")

class TestGuest < MiniTest::Test

  def setup
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
  
end
