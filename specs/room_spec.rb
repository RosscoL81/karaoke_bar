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
    @guest2 = Guest.new("Harry", 20, "Obviously")
    @guest3 = Guest.new("Tom", 30, "Love is on the radio")
    @guest4 = Guest.new("Dougie", 40, "Five colours in her hair")

    @room1 = Room.new("McFly Room", 3, [@song1, @song2], [@guest1, @guest2] )

  end

  def test_room_has_name
    assert_equal("McFly Room", @room1.name)
  end

  def test_room_has_capacity
  assert_equal(3, @room1.capacity)
  end

  def test_song_count
    assert_equal(2, @room1.song_count)
  end

  def test_no_of_guests
    assert_equal(2, @room1.guests_count)
  end

  def test_add_guest_to_room
    @room1.add_guest(@guest3)
    assert_equal(3, @room1.guests_count)
  end

  def test_guest_leaves_room
    @room1.guest_out(@guest2)
    assert_equal(1, @room1.guests_count)
  end

  def test_add_song_to_songs_list
    @room1.add_song(@song3)
    assert_equal(3, @room1.song_count)
  end


end
