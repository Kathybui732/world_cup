class Player
  attr_reader :name

  def initialize(params = {})
    @name = params[:name]
  end
end
