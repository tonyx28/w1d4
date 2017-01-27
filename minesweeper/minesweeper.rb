require_relative 'board.rb'
require_relative 'tiles.rb'

class Minesweeper

  attr_reader :board

  def initialize(num_bombs = 10)
    @board = Board.new
    set_bombs(num_bombs)
  end

  def set_bombs(num_bombs)
    coordinates = random_pos(num_bombs)
    p coordinates
    coordinates.each { |coords| board[coords].set_bomb }
  end

  def random_pos(num_bombs)
    # p board.class
    rows = board.row_size
    cols = board.col_size
    bomb_coordinates = []
    num_bombs.times { bomb_coordinates << [rand(rows),rand(cols)]}
    bomb_coordinates
  end

  def display
    board.render
  end
end

a = Minesweeper.new
a.display
