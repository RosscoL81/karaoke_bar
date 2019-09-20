require("minitest/autorun")
require("minitest/rg")
require_relative("../song.rb")

class TestSong < Minitest::Test

  def setup
    @song = Song.new("love is on the radio")
  end

  def test_song_has_title()
    assert_equal("love is on the radio", @song.title())
  end
end
