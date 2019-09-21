require("minitest/autorun")
require("minitest/rg")
require_relative("../room")
require_relative("../song")
require_relative("../guest")

class RoomTest < MiniTest::Test

  def setup
    @song1 = Song.new("Obviously")
    @song2 = Song.new("Sorry's not good enough")
    @guest1 = Guest.new("Danny", 10, "Star Girl")
    @guest2 = Guest.new("Harry", 10, "Star Girl")
    @guest3 = Guest.new("Tom", 10, "Star Girl")

    @room = Room.new("McFly Room", 3, [@song1, @song2], [@guest1, @guest2, @guest3] )

  end

  def test_room_has_name
    assert_equal("McFly Room", @room.name)
  end

  def test_room_has_capacity
  assert_equal(3, @room.capacity)
  end

  def test_song_count
    assert_equal(2, @room.song_count)
  end

  def test_no_of_guests
    assert_equal(3, @room.guests_count)
  end

end
