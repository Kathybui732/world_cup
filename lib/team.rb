class Team
  attr_reader :country

  def initialize(country)
    @country = country
    @elim = false
  end

  def eliminated?
    @elim
  end

  def eliminated
    @elim = true
  end
end
