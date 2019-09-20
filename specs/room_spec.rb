require("minitest/autorun")
require("minitest/rg")
require_relative("../room")
require_relative("../song")

class RoomTest < MiniTest::Test

  def setup
    @song1 = Song.new("Obviously")
    @song2 = Song.new("Sorry's not good enough")
    @room = Room.new("McFly Room", 3, [@song1, @song2] )
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

end
