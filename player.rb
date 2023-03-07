class Player

  attr_reader :lives, :name

  def initialize(name)
    @name = name
    @lives = 3
  end

  def remove_life()
    @lives -= 1
  end

  def print_current_lives()
    "#{@lives}/3"
  end

end