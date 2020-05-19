require 'minitest/autorun'
require 'minitest/pride'
require './lib/team'
require './lib/player'

class TeamTest < Minitest::Test

  def setup
    @team = Team.new("France")
    @mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
    @pogba = Player.new({name: "Paul Pogba", position: "midfielder"})
  end

  def test_it_can_exist
    assert_instance_of Team, @team
  end

  def test_it_has_a_country
    assert_equal "France", @team.country
  end
end
