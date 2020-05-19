require "minitest/autorun"
require "minitest/pride"
require "./lib/world_cup"
require "./lib/team"
require "./lib/player"

class WorldCupTest < Minitest::Test

  def setup
    @france = Team.new("France")
    @mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
    @pogba = Player.new({name: "Paul Pogba", position: "midfielder"})
    @france.add_player(@mbappe)
    @france.add_player(@pogba)
    @croatia = Team.new("Croatia")
    @modric = Player.new({name: "Luka Modric", position: "midfielder"})
    @vida = Player.new({name: "Domagoj Vida", position: "defender"})
    @croatia.add_player(@modric)
    @croatia.add_player(@vida)
    @world_cup = WorldCup.new(2018, [@france, @croatia])
  end

  def test_it_can_exist
    assert_instance_of WorldCup, @world_cup
  end

  def test_it_has_a_year
    @france.add_player(@mbappe)
    @france.add_player(@pogba)
    @croatia.add_player(@modric)
    @croatia.add_player(@vida)
    assert_equal 2018, @world_cup.year
  end

  def test_it_has_teams
    @france.add_player(@mbappe)
    @france.add_player(@pogba)
    @croatia.add_player(@modric)
    @croatia.add_player(@vida)
    assert_equal [@france, @croatia], @world_cup.teams
  end
end
