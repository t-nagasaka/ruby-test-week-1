class Character

  attr_reader :hp, :offense, :defense
  attr_writer :hp

  def initialize(**params)
    @hp = params[:hp]
    @offense = params[:offense]
    @defense = params[:defense]
  end
end