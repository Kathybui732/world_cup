class Player
  attr_reader :name, :position

  def initialize(params = {name: nil, position: nil})
    @name = params[:name]
    @position = params[:position]
  end
end
