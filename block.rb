# Name: Linyun Liu
# Title: A Sudoku Game in Ruby

class Block

  @numbers

  def initialize
    @numbers = Array.new(9, 0)
  end

  def add(index, item)
    @numbers[index] = item
  end
  def remove(index)
    @numbers[index] = 0
  end

  def get_numbers
    @numbers
  end
  def to_s
    @numbers.to_s
  end

  def check_out(number)
    # The same number can not be added twice
    if !@numbers.include?(number)
      true
    else
      false
    end
  end
end