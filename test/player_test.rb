require 'minitest/autorun'
require 'minitest/pride'
require './lib/player'

class WorldCup < Minitest::Test

  def setup
    @player = Player.new({name: "Luka Modric", position: "midfielder"})
  end

  def test_it_has_a_name
    assert_equal "Luka Modric", @player.name
  end
end
