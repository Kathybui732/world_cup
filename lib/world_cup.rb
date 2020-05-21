class WorldCup
  attr_reader :year, :teams

  def initialize(year, teams)
    @year = year
    @teams = teams
  end

  def active_players_by_position(position)
    active_players = []
    @teams.each do |team|
      active_players << team.players if !team.eliminated?
    end

    active_players.flatten.select do |player|
      player.position == position
    end
  end
end
