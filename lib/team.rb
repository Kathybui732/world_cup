class Team
  attr_reader :country, :players

  def initialize(country)
    @country = country
    @elim = false
    @players = []
  end

  def eliminated?
    @elim
  end

  def eliminated
    @elim = true
  end

  def add_player(player)
    @players << player
  end
end
