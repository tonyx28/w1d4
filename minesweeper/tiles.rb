class Tiles
# hidden, flagged
  def initialize(bomb = false)
    @bomb = bomb
    @status = :hidden
    @flagged = false
    @num_adjacent_bombs = nil
  end

  def reveal
    @status = :revealed
  end

  def valid_selection?
    @status == :hidden
  end

  def to_s
    @bomb ? "|B|" : "| |"
  end

  def set_bomb
    @bomb = true
  end

end
