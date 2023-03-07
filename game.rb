class Game
  attr_accessor :game_over, :p1, :p2

  def initialize()
    @game_over = false
  end

  def new_session(p1, p2)
    @player_turn = p1
    @p1 = p1
    @p2 = p2
  end

  def change_turn()
    if @player_turn == p1
      @player_turn = @p2
    else
      @player_turn = @p1
    end
  end

  def player_turn()
    @player_turn
  end

end