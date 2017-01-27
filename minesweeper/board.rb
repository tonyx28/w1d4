require_relative "tiles.rb"

class Board

  def initialize(board = Array.new(10) { Array.new(10) { Tiles.new } } )
    @board = board

  end

  def [](pos)
    x, y = pos
    @board[x][y]
  end

  def reveal(pos)
    self[pos].reveal
  end

  def render
    @board.each do |rows|
      rows.each do |tile|
        print tile.to_s
      end
      puts "\n"
    end
  end

  def row_size
    @board.size
  end

  def col_size
    @board[0].size
  end
end
