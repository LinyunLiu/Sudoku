# Name: Linyun Liu
# Title: A Sudoku Game in Ruby

require_relative 'block'
class Game

  # create 27 blocks of numbers
  # They are essentially arrays that needs to be checked
  @cols
  @rows
  @blocks

  # to track the process of the game (i.e how many number out of 81 is completed)
  @count

  def initialize
    @cols = Array.new
    @rows = Array.new
    @blocks = Array.new(9, Block.new)
    (0..8).each {
      |i|
      @cols[i] = Block.new
      @rows[i] = Block.new
      @blocks[i] = Block.new
    }
    @count = 0
  end

  def get_cols
    @cols
  end
  def get_rows
    @rows
  end
  def get_count
    @count
  end

  def add(x,y,z,n)
    if @count != 81
      @cols[x].add(y,n)
      @rows[y].add(x,n)
      @tmp = (x%3)+(3*(y%3))
      @blocks[z].add(@tmp, n)
      @count += 1
    end
  end

  def check_out(x, y, n)
    if @cols[x].check_out(n) == true && @rows[y].check_out(n) == true
      @tmp = (x/3)+(3*(y/3))
      if @blocks[@tmp].check_out(n)
        add(x,y, @tmp, n)
        true
      end
    else
      false
    end
  end

end
